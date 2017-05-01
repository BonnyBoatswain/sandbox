#!/bin/bash

FAIL_CHECK=1
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: 12061eff-cc8f-4eea-a8e4-e1572b4bee43"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0