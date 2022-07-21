#!/usr/bin/env bash

if ! go get -u;
then
    echo "Error: failed to execute go get -u"
    exit 1
fi

if ! git diff --exit-code go.mod &> /dev/null;
then
    echo "go.mod differs, please re-add it to your commit"
    exit 1
fi