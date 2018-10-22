FROM jeanblanchard/alpine-glibc
MAINTAINER Jean Blanchard <jean@blanchard.io>

# Java Version
ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 192
ENV JAVA_VERSION_BUILD 12
ENV JAVA_URL_ELEMENT   750e1c8617c5452694857ad95c3ee230
ENV JAVA_PACKAGE       jre
ENV JAVA_SHA256_SUM    f23a3e2b9decef82b74f850157580d929ab35e9f19be5e0a10c779b68be51d43

# Download and unarchive Java
RUN apk add --update curl &&\
  mkdir -p /opt &&\
  curl -jkLH "Cookie: oraclelicense=accept-securebackup-cookie" -o java.tar.gz\
    http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_URL_ELEMENT}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz &&\
  echo "$JAVA_SHA256_SUM  java.tar.gz" | sha256sum -c - &&\
  gunzip -c java.tar.gz | tar -xf - -C /opt && rm -f java.tar.gz &&\
  ln -s /opt/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/jre &&\
  rm -rf /opt/jre/lib/plugin.jar \
         /opt/jre/lib/ext/jfxrt.jar \
         /opt/jre/bin/javaws \
         /opt/jre/lib/javaws.jar \
         /opt/jre/lib/desktop \
         /opt/jre/plugin \
         /opt/jre/lib/deploy* \
         /opt/jre/lib/*javafx* \
         /opt/jre/lib/*jfx* \
         /opt/jre/lib/amd64/libdecora_sse.so \
         /opt/jre/lib/amd64/libprism_*.so \
         /opt/jre/lib/amd64/libfxplugins.so \
         /opt/jre/lib/amd64/libglass.so \
         /opt/jre/lib/amd64/libgstreamer-lite.so \
         /opt/jre/lib/amd64/libjavafx*.so \
         /opt/jre/lib/amd64/libjfx*.so &&\
  apk del curl &&\
  rm -rf /var/cache/apk/*

# Set environment
ENV JAVA_HOME /opt/jre
ENV PATH ${PATH}:${JAVA_HOME}/bin

