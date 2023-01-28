#!/usr/bin/env bash

set -euo pipefail

if [ -z "$INPUT_TRIGGER_URL" ]; then
  echo "Trigger URL is required"
  exit 1
fi

TRIGGER_URL=$INPUT_TRIGGER_URL

if [ -n "$INPUT_DEPLOYMENT" ]; then
  TRIGGER_URL="$TRIGGER_URL&deployment=$INPUT_DEPLOYMENT"
fi

if [ -n "$INPUT_REPOSITORY" ]; then
  TRIGGER_URL="$TRIGGER_URL&repository=$INPUT_REPOSITORY"
fi

if [ -n "$INPUT_SHA" ]; then
  TRIGGER_URL="$TRIGGER_URL&sha=$INPUT_SHA"
fi

if [ -n "$INPUT_ENVIRONMENT_URL" ]; then
  TRIGGER_URL="$TRIGGER_URL&environmentUrl=$INPUT_ENVIRONMENT_URL"
fi

if [ -n "$INPUT_RUN_LOCATION" ]; then
  TRIGGER_URL="$TRIGGER_URL&runLocation=$INPUT_RUN_LOCATION"
fi

if [ -n "$INPUT_ENVIRONMENT_NAME" ]; then
  TRIGGER_URL="$TRIGGER_URL&environmentName=$INPUT_ENVIRONMENT_NAME"
fi

if [ -n "$INPUT_DEPLOYMENT_ID" ]; then
  TRIGGER_URL="$TRIGGER_URL&deploymentId=$INPUT_DEPLOYMENT_ID"
fi

req_with_retries() {
    local delay=10

    for i in $(seq 1 10); do
        curl --connect-timeout 300 -sf "$INPUT_TRIGGER_URL" && break
        sleep $delay
        echo "$i retries"
        
        if [[ $i == 10 ]]; then
          echo "::error::Check failed"
          exit 1
        fi
    done
    
    
}

req_with_retries
