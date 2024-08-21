FROM --platform=$TARGETPLATFORM centos:6 as build

ENV TZ=Asia/Shanghai

RUN <<EOF
#!/usr/bin/env bash

echo "Hello $1 test"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
EOF
