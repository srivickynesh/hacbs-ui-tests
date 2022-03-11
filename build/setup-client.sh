#!/usr/bin/env bash
# Copyright (c) 2022 Red Hat, Inc.

# Set default value is stable
export OPENSHIFT_VERSION=${OPENSHIFT_VERSION:-"stable"}
command -v oc &> /dev/null
if [[ $? -ne 0 ]]; then
    if [[ $(uname -s) == "Darwin" ]]; then
        curl -O https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${OPENSHIFT_VERSION}/openshift-client-mac.tar.gz
        tar -zxf openshift-client-mac.tar.gz -C /usr/local/bin
        chmod a+x /usr/local/bin/oc
    else
        curl -O https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${OPENSHIFT_VERSION}/openshift-client-linux.tar.gz
        tar -zxf openshift-client-linux.tar.gz -C /usr/local/bin
        chmod a+x /usr/local/bin/oc
    fi
fi

command -v jq &> /dev/null
if [[ $? -ne 0 ]]; then
    if [[ "$(uname)" == "Darwin" ]]; then
        curl -o jq -L https://github.com/stedolan/jq/releases/download/jq-1.6/jq-osx-amd64
    elif [[ "$(uname)" == "Linux" ]]; then
        curl -o jq -L https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
    fi
    chmod a+x ./jq && mv ./jq /usr/local/bin/
fi
