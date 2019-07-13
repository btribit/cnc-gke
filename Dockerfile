FROM hashicorp/terraform:latest

ENV CLOUD_SDK_VERSION 237.0.0


#Google cloud SDK

WORKDIR /

ENV PATH /google-cloud-sdk/bin:$PATH

RUN apk --no-cache add \
       curl \
       python \
       py-crcmod \
       bash \
       libc6-compat \
       openssh-client \
       openssh \
       git \
   && curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
   tar xzf google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
   rm google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
   ln -s /lib /lib64
