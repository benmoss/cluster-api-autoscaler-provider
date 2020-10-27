package autoscaler

import (
	"testing"

	"github.com/benmoss/autoscaler-tests/test/integration"
)

func TestAutoscaling(t *testing.T) {
	integration.ClusterAutoscalerSuite(t, &Provider{})
}
