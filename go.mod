module github.com/benmoss/cluster-api-autoscaler-provider

go 1.15

replace (
	k8s.io/api => k8s.io/api v0.19.2
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.19.2
	k8s.io/apimachinery => k8s.io/apimachinery v0.19.3-rc.0
	k8s.io/apiserver => k8s.io/apiserver v0.19.2
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.19.2
	k8s.io/client-go => k8s.io/client-go v0.19.2
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.19.2
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.19.2
	k8s.io/code-generator => k8s.io/code-generator v0.19.3-rc.0
	k8s.io/component-base => k8s.io/component-base v0.19.2
	k8s.io/controller-manager => k8s.io/controller-manager v0.19.3-rc.0
	k8s.io/cri-api => k8s.io/cri-api v0.19.3-rc.0
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.19.2
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.19.2
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.19.2
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.19.2
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.19.2
	k8s.io/kubectl => k8s.io/kubectl v0.19.2
	k8s.io/kubelet => k8s.io/kubelet v0.19.2
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.19.2
	k8s.io/metrics => k8s.io/metrics v0.19.2
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.19.2
	k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.19.2
	k8s.io/sample-controller => k8s.io/sample-controller v0.19.2
)

require (
	github.com/benmoss/autoscaler-tests v0.0.0-20201027211942-e3aff16b3c4d
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e // indirect
	github.com/google/go-cmp v0.4.1 // indirect
	github.com/imdario/mergo v0.3.9 // indirect
	github.com/octago/sflags v0.2.0
	github.com/onsi/gomega v1.10.1 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/stretchr/testify v1.5.1
	google.golang.org/appengine v1.6.6 // indirect
	k8s.io/api v0.19.2
	k8s.io/apimachinery v0.19.2
	k8s.io/client-go v9.0.0+incompatible
	k8s.io/klog v1.0.0
	k8s.io/kubernetes v1.19.3
	k8s.io/utils v0.0.0-20201015054608-420da100c033
	sigs.k8s.io/kubetest2 v0.0.0-20201023214501-6beb03da0855
)
