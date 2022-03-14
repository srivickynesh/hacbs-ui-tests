# hacbs-ui-tests

## Running the tests locally

Install Cypress following [Cypress Official Documentation](https://docs.cypress.io/guides/getting-started/installing-cypress)

#### Pre-requisites:
1. [Openshift-client](https://docs.openshift.com/container-platform/4.7/cli_reference/openshift_cli/getting-started-cli.html)
2. [jq](https://snapcraft.io/install/yq)
3. [nodejs](https://nodejs.dev/download/package-manager/)

Login to the cluster:

    oc login -u CYPRESS_OC_CLUSTER_USER -p CYPRESS_OC_CLUSTER_PASS --server=CYPRESS_OC_CLUSTER_URL

From the hacbs-ui-tests root directory

    npx cypress open

#### Contributing to test steps:

Tests are picked from `cypress/tests/` directory.

Use `cypress/tests/testTemplate.spec.js` as a template while writing your tests.
