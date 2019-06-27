#!/bin/bash

# VARIABLES
DEPLOYMENT_NAME="paasta-api-gateway-service"
BOSH2_NAME="micro-bosh"

# DEPLOY
bosh -e ${BOSH2_NAME} -n -d ${DEPLOYMENT_NAME} deploy --no-redact manifests/${DEPLOYMENT_NAME}.yml \
    -o manifests/ops-files/vsphere-network.yml \
    -l manifests/vars.yml \
    -v deployment_name=${DEPLOYMENT_NAME}

