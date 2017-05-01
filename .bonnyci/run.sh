#!/bin/bash

FAIL_CHECK=1
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: c692ddf5-86b4-4cac-b545-87d55de81d8a"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0