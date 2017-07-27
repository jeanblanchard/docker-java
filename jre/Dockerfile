FROM jeanblanchard/alpine-glibc
MAINTAINER Jean Blanchard <jean@blanchard.io>

# Java Version
ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 144
ENV JAVA_VERSION_BUILD 01
ENV JAVA_PACKAGE       jre
ENV JAVA_SHA256_SUM    4e6e11aad54ae3c716a5607ee88d81f3f1e8b5b23ee474b0272dba351ee9f28a
ENV JAVA_URL_ELEMENT   090f390dda5b47b9b721c7dfaa008135

# Download and unarchive Java
RUN apk add --update curl &&\
  mkdir -p /opt &&\
  curl -jkLH "Cookie: oraclelicense=accept-securebackup-cookie" -o java.tar.gz\
    http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_URL_ELEMENT}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz &&\
  echo "$JAVA_SHA256_SUM  java.tar.gz" | sha256sum -c - &&\
  gunzip -c java.tar.gz | tar -xf - -C /opt && rm -f java.tar.gz &&\
  ln -s /opt/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/jre &&\
  curl -jkLH "Cookie: oraclelicense=accept-securebackup-cookie" -o jce_policy-8.zip http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip &&\
  unzip jce_policy-8.zip -d /tmp &&\
  cp /tmp/UnlimitedJCEPolicyJDK8/*.jar /opt/jre/lib/security/ &&\
  rm -rf jce_policy-8.zip /tmp/UnlimitedJCEPolicyJDK8 &&\
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

