#!/usr/bin/env bash

set -euxo pipefail

echo "::group::checkly-trigger"

if [ -z "$INPUT_TRIGGER_URL" ]; then
  echo "Trigger URL is required"
  exit 1
fi

QUERY_PARAMETERS=()

if [ -n "$INPUT_SHA" ]; then
  QUERY_PARAMETERS+=("sha=$INPUT_SHA")
fi

if [ -n "$INPUT_DEPLOYMENT" ]; then
  QUERY_PARAMETERS+=("deployment=$INPUT_DEPLOYMENT")
fi

if [ -n "$INPUT_REPOSITORY" ]; then
  QUERY_PARAMETERS+=("repository=$INPUT_REPOSITORY")
fi

if [ -n "$INPUT_ENVIRONMENT_URL" ]; then
  QUERY_PARAMETERS+=("environmentUrl=$INPUT_ENVIRONMENT_URL")
fi

if [ -n "$INPUT_RUN_LOCATION" ]; then
  QUERY_PARAMETERS+=("runLocation=$INPUT_RUN_LOCATION")
fi

if [ -n "$INPUT_ENVIRONMENT_NAME" ]; then
  QUERY_PARAMETERS+=("environmentName=$INPUT_ENVIRONMENT_NAME")
fi

if [ -n "$INPUT_DEPLOYMENT_ID" ]; then
  QUERY_PARAMETERS+=("deploymentId=$INPUT_DEPLOYMENT_ID")
fi

QUERY_PARAMETERS_STRING=$(IFS=& ; echo "${QUERY_PARAMETERS[*]}")

TRIGGER_URL="$INPUT_TRIGGER_URL?$QUERY_PARAMETERS_STRING"

echo "URL: $TRIGGER_URL"

req_with_retries() {
    local delay=10

    for i in $(seq 1 10); do
        curl --connect-timeout 300 -svf "$TRIGGER_URL" && break
        sleep $delay
        echo "$i retries"
        
        if [[ $i == 10 ]]; then
          echo "::error::Check failed"
          exit 1
        fi
    done
    
    
}

req_with_retries

echo "::endgroup::"
