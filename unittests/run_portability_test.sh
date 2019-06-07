#!/bin/bash
# Run two portability tests passed on the command line
# Usage: run_portability_test.sh 32_bit_test_executable 64_bit_test_executable

port_32=$1
port_64=$2

die() {
  >&2 echo $@
  exit -1
}

run_and_die_on_failure() {
  >&2 echo "Running $@"
  "$@" || die Portability test failed: "$@"
}

run_and_die_on_failure $port_64 save 64
run_and_die_on_failure $port_32 load 32
run_and_die_on_failure $port_32 save 32
run_and_die_on_failure $port_64 load 64
run_and_die_on_failure $port_64 remove 64
