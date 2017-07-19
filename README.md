## Minimal Docker image with Java [![Circle CI](https://circleci.com/gh/jeanblanchard/docker-java/tree/master.svg?style=shield)](https://circleci.com/gh/jeanblanchard/docker-java/tree/master)

Basic [Docker](https://www.docker.com/) image to run [Java](https://www.java.com/) applications.
This is based on [Alpine Linux](http://alpinelinux.org/) to keep the size minimal (about 25% of an ubuntu-based image).

### Tags

* [`latest` or `8` or `serverjre-8`](https://github.com/jeanblanchard/docker-java/blob/master/serverjre/Dockerfile): Oracle Java 8 (Server JRE) [![](https://images.microbadger.com/badges/image/jeanblanchard/java.svg)](https://microbadger.com/images/jeanblanchard/java "Get your own image badge on microbadger.com")
* [`jdk-8`](https://github.com/jeanblanchard/docker-java/blob/master/jdk/Dockerfile): Oracle Java 8 (JDK) [![](https://images.microbadger.com/badges/image/jeanblanchard/java:jdk-8.svg)](https://microbadger.com/images/jeanblanchard/java:jdk-8 "Get your own image badge on microbadger.com")
* [`jre-8`](https://github.com/jeanblanchard/docker-java/blob/master/jre/Dockerfile): Oracle Java 8 (JRE) [![](https://images.microbadger.com/badges/image/jeanblanchard/java:jre-8.svg)](https://microbadger.com/images/jeanblanchard/java:jre-8 "Get your own image badge on microbadger.com")

Additionally, tags are created for each oracle release (e.g. `8u141`, `jdk-8u141` or `jre-8u141`).

### Usage

Example: 

    docker run -it --rm jeanblanchard/java:8 java -version
