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

