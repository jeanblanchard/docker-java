## Minimal Docker image with Java [![Build Status](https://travis-ci.org/jeanblanchard/docker-java.svg?branch=master)](https://travis-ci.org/jeanblanchard/docker-java)

Basic [Docker](https://www.docker.com/) image to run [Java](https://www.java.com/) applications.
This is based on [Alpine Linux](http://alpinelinux.org/) to keep the size minimal (about 25% of an ubuntu-based image).

### Tags

* `latest` or `8` or `serverjre-8`: Oracle Java 8 (Server JRE)
* `jdk-8`: Oracle Java 8 (JDK)
* `jre-8`: Oracle Java 8 (JRE)

Please note that Java 7 is unsupported by Oracle, as of April 2015, so the following tags
will not be updated past version 7u80, which has know security issues:

* `7` or `serverjre-7`: Oracle Java 7 (Server JRE)
* `jdk-7`: Oracle Java 7 (JDK)
* `jre-7`: Oracle Java 7 (JRE)

Additionally, tags are created for each oracle release (e.g. jdk-8u45).

### Usage

Example: 

    docker run -it --rm jeanblanchard/java:8 java -version
