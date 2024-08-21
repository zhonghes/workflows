FROM --platform=$TARGETPLATFORM centos:6 as build

USER "1000"

ENV TZ=Asia/Shanghai

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
