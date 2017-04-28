#!/bin/bash

FAIL_CHECK=0
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: 083c0290-ce32-41b9-9318-585ebc6936d8"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0