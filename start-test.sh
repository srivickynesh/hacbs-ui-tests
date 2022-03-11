#!/usr/bin/env bash

###############################################################################
# Copyright (c) 2022 Red Hat, Inc.
###############################################################################
echo "Initiating HACBS UI tests..."

export BROWSER=${BROWSER:-"chrome"}
export CYPRESS_OC_IDP=${CYPRESSS_OC_IDP:-"kube:admin"}
export CYPRESS_OPTIONS_HUB_USER=${CYPRESS_OPTIONS_HUB_USER:-"kubeadmin"}
