FROM alpine:3.10
ENV BUILD_PACKAGES \
    py3-pip \
    bash \
    openssh-client

ADD assets /opt/resource
RUN \
    chmod +x /opt/resource/* && \
    apk add --no-cache ${BUILD_PACKAGES} && \
    pip3 install pprint

WORKDIR /

ENTRYPOINT ["/bin/bash"]

