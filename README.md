# hacbs-ui-tests




### Prerequisites:
1. nodeJS
2. ![OpenShift CLI](https://docs.openshift.com/container-platform/4.9/cli_reference/openshift_cli/getting-started-cli.html)
3. ![yq](https://snapcraft.io/yq)
4. browser - either chrome or firefox installed

Export the following environment variables:
```
    export CYPRESS_OC_CLUSTER_URL=https://api.{clusterName}.dev.rhcloud.com:6443
    export CYPRESS_OC_CLUSTER_USER=kubeadmin
    export CYPRESS_OC_CLUSTER_PASS=xxxxxxxxx
    export CYPRESS_BASE_URL=https://console-openshift-console.apps.{clusterName}.dev.rhcloud.com
```
Login to the hub cluster:

    oc login -u CYPRESS_OC_CLUSTER_USER -p CYPRESS_OC_CLUSTER_PASS --server=CYPRESS_OC_CLUSTER_URL

From the hacbs-ui-tests root directory, run npx cypress open


![Cypress Official Doc](https://docs.cypress.io/guides/getting-started/installing-cypress)
