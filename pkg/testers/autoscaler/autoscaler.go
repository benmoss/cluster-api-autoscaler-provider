package autoscaler

import (
	"fmt"
	"os"

	"github.com/octago/sflags/gen/gpflag"
	"k8s.io/klog"
	"sigs.k8s.io/kubetest2/pkg/exec"
	"sigs.k8s.io/kubetest2/pkg/process"
)

type Tester struct {
	AutoscalerTestPath string `desc:"Path to the autoscaler test binary"`
	testArgs           []string
}

func (t *Tester) Execute() error {
	fs, err := gpflag.Parse(t)
	if err != nil {
		return fmt.Errorf("failed to initialize tester: %w", err)
	}
	help := fs.BoolP("help", "h", false, "")
	if err := fs.Parse(os.Args); err != nil {
		return fmt.Errorf("failed to parse flags: %w", err)
	}
	if *help {
		fs.SetOutput(os.Stdout)
		fmt.Fprintf(os.Stdout, "Usage: %s [options...] -- [arguments to the test binary]\n", os.Args[0])
		fs.PrintDefaults()
		return nil
	}

	t.testArgs = fs.Args()[fs.ArgsLenAtDash():]

	if err := process.ExecJUnit("kubectl", []string{"cordon", "-l", "node-role.kubernetes.io/master"}, os.Environ()); err != nil {
		return fmt.Errorf("failed to cordon control plane: %w", err)
	}

	return t.Test()
}

func (t *Tester) Test() error {
	args := t.testArgs
	if kubeconfig, ok := os.LookupEnv("KUBECONFIG"); ok {
		args = append(args, "--kubeconfig", kubeconfig)
	}
	cmd := exec.Command(t.AutoscalerTestPath, args...)
	exec.InheritOutput(cmd)
	return cmd.Run()
}

func NewDefaultTester() *Tester {
	return &Tester{}
}

func Main() {
	t := NewDefaultTester()
	if err := t.Execute(); err != nil {
		klog.Fatalf("failed to run capi autoscaler suite: %v", err)
	}
}
