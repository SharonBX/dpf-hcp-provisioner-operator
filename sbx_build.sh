VERSION=$1

make docker-build docker-push helm-push \
    CONTAINER_TOOL="podman --cgroup-manager=cgroupfs" \
    HELM_CHART_VERSION=$VERSION \
    IMG=quay.io/rh-ee-sbarak/dpf-hcp-provisioner-operator:v$VERSION \
    HELM_CHART_REGISTRY=oci://quay.io/rh-ee-sbarak/charts
