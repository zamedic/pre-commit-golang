#!/usr/bin/env bash

if ! go get -u;
then
    echo "Error: failed to execute go get -u"
    exit 1
fi

if ! go mod tidy;
then
    echo "Error: failed to execute go mod tidy"
    exit 1
fi

if ! git diff --exit-code go.mod go.sum;
then
    echo "Error: go.mod and go.sum differ"
    exit 1
fi
