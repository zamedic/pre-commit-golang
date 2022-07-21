#!/usr/bin/env bash

if grep -q "replace" go.mod; then
    echo "Error: go.mod contains replace, please remove it"
    exit 1
fi