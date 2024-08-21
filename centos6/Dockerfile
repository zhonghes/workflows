FROM --platform=$TARGETPLATFORM centos:6 as build

ENV TZ=Asia/Shanghai

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "-c", "/entrypoint.sh"]
