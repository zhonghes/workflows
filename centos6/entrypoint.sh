#!/bin/sh -l

echo "Hello $1 test"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

