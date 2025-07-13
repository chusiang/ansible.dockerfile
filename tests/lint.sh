#!/bin/bash

# Check Dockerfile with hadolint.
#
# - https://github.com/hadolint/hadolint

echo -e "\n==> Check latest tag .."
LATEST_TAG=$(grep "\,\ \`latest\`" README.md | awk -F'`' '{ print $2 }')
hadolint v${LATEST_TAG}/Dockerfile

echo -e "\n==> Check previous tag .."
PREVIOUS_TAG=$((${LATEST_TAG} - 1))
hadolint v${PREVIOUS_TAG}/Dockerfile

echo
