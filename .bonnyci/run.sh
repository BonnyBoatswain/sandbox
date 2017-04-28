#!/bin/bash

FAIL_CHECK=0
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: 940ddf92-7468-4ee8-b7ad-6ee326da5f30"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0