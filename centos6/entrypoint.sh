#!/usr/bin/env bash

echo "Hello $1 test"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

