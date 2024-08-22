#!/usr/bin/env bash

# 复用腾讯云 centos6 yum 源
rm -f /etc/yum.repos.d/*.repo
curl -fsSL -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.cloud.tencent.com/repo/centos6_base.repo

# 安装编译环境
yum groupinstall -y "Development Tools"
yum install -y imake rpm-build pam-devel krb5-devel zlib-devel libXt-devel libX11-devel gtk2-devel perl perl-IPC-Cmd

# 拉取 openssh-rpms 仓库
cd "$(mktemp -d)" || echo "进入临时目录失败"
curl -fsSL -o main.zip https://github.com/boypt/openssh-rpms/archive/refs/heads/main.zip && unzip main.zip
cd openssh-rpms-main || echo "进入目录失败"

# 编译 openssh
./pullsrc.sh && ./compile.sh

# 查看编译文件
cd "$(./compile.sh RPMDIR)" && ls

# 拷贝编译文件至指定目录
openssh_path="/github/workspace/centos6/$(ls | grep -oP '^openssh-\d.+\.rpm$')"
cp -a ./*.rpm "${openssh_path}"
