# Kubetest2 GCE Deployer

This component of kubetest2 is responsible for test cluster lifecycles for clusters deployed with Cluster API.

## Usage

As an example, to deploy with CAPD:

```
export KIND_EXPERIMENTAL_DOCKER_NETWORK=bridge
kubetest2 capi --provider docker --repo-root $CLONEDREPOPATH --build --up --down
```
