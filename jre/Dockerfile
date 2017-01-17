FROM jeanblanchard/alpine-glibc
MAINTAINER Jean Blanchard <jean@blanchard.io>

# Java Version
ENV JAVA_VERSION_MAJOR 9
ENV JAVA_VERSION_BUILD 152

# Download and unarchive Java
RUN apk add --update curl &&\
  mkdir -p /opt &&\
  curl -LO http://download.java.net/java/jdk${JAVA_VERSION_MAJOR}/archive/${JAVA_VERSION_BUILD}/binaries/jre-${JAVA_VERSION_MAJOR}-ea+${JAVA_VERSION_BUILD}_linux-x64_bin.tar.gz &&\
  curl -LO http://download.java.net/java/jdk${JAVA_VERSION_MAJOR}/archive/${JAVA_VERSION_BUILD}/binaries/jre-${JAVA_VERSION_MAJOR}-ea+${JAVA_VERSION_BUILD}_linux-x64_bin.md5 &&\
  sed 's/md5 (\(.*\)) = \(.*\)/\2  \1/' -i jre-${JAVA_VERSION_MAJOR}-ea+${JAVA_VERSION_BUILD}_linux-x64_bin.md5 &&\
  md5sum -c jre-${JAVA_VERSION_MAJOR}-ea+${JAVA_VERSION_BUILD}_linux-x64_bin.md5 &&\
  gunzip -c jre-${JAVA_VERSION_MAJOR}-ea+${JAVA_VERSION_BUILD}_linux-x64_bin.tar.gz | tar -xf - -C /opt &&\
  rm -f jre-${JAVA_VERSION_MAJOR}-ea+${JAVA_VERSION_BUILD}_linux-x64_bin.tar.gz jre-${JAVA_VERSION_MAJOR}-ea+${JAVA_VERSION_BUILD}_linux-x64_bin.md5 &&\
  ln -s /opt/jre-${JAVA_VERSION_MAJOR} /opt/jre &&\
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
