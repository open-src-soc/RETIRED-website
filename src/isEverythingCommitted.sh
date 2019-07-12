#!/usr/bin/env bash

# report for all files with uncommitted changes.  ignore submodules in
# a dirty state.
RES=$(git status --ignore-submodules=dirty  --short)

if [ -z "$RES" ]; then
    exit 0
else
    echo
    echo "ERROR.  the repository contains changes that have not been committed."
    echo
    echo $RES
    echo
    exit -1
fi
