package autoscaler

import (
	"testing"

	autoscaler "github.com/benmoss/autoscaler-tests/framework"
)

func TestAutoscaling(t *testing.T) {
	autoscaler.ClusterAutoscalerSuite(t, &Provider{})
}
