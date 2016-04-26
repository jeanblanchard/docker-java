FROM jeanblanchard/alpine-glibc
MAINTAINER Jean Blanchard <jean@blanchard.io>

# Java Version
ENV JAVA_VERSION_MAJOR 9
ENV JAVA_VERSION_BUILD 115
ENV JAVA_PACKAGE       jdk
ENV JAVA_MD5_SUM       b9e2aa269bf9e89a04ae167129d3cafc

# Download and unarchive Java
RUN apk add --update curl &&\
  mkdir -p /opt &&\
  curl -jkL -o java.tar.gz\
    http://download.java.net/java/jdk${JAVA_VERSION_MAJOR}/archive/${JAVA_VERSION_BUILD}/binaries/jdk-${JAVA_VERSION_MAJOR}-ea+${JAVA_VERSION_BUILD}_linux-x64_bin.tar.gz &&\
  echo "$JAVA_MD5_SUM  java.tar.gz" | md5sum -c - &&\
  gunzip -c java.tar.gz | tar -xf - -C /opt && rm -f java.tar.gz &&\
  ln -s /opt/jdk-${JAVA_VERSION_MAJOR} /opt/jdk &&\
  rm -rf /opt/jdk/*src.zip \
         /opt/jdk/lib/missioncontrol \
         /opt/jdk/lib/visualvm \
         /opt/jdk/lib/*javafx* \
         /opt/jdk/lib/plugin.jar \
         /opt/jdk/lib/ext/jfxrt.jar \
         /opt/jdk/bin/javaws \
         /opt/jdk/lib/javaws.jar \
         /opt/jdk/lib/desktop \
         /opt/jdk/plugin \
         /opt/jdk/lib/deploy* \
         /opt/jdk/lib/*javafx* \
         /opt/jdk/lib/*jfx* \
         /opt/jdk/lib/amd64/libdecora_sse.so \
         /opt/jdk/lib/amd64/libprism_*.so \
         /opt/jdk/lib/amd64/libfxplugins.so \
         /opt/jdk/lib/amd64/libglass.so \
         /opt/jdk/lib/amd64/libgstreamer-lite.so \
         /opt/jdk/lib/amd64/libjavafx*.so \
         /opt/jdk/lib/amd64/libjfx*.so &&\
  apk del curl &&\
  rm -rf /var/cache/apk/*

# Set environment
ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin
