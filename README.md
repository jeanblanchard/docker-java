## Minimal Docker image with Java [![Circle CI](https://circleci.com/gh/jeanblanchard/docker-java/tree/master.svg?style=shield)](https://circleci.com/gh/jeanblanchard/docker-java/tree/master)

Basic [Docker](https://www.docker.com/) image to run [Java](https://www.java.com/) applications.
This is based on [Alpine Linux](http://alpinelinux.org/) to keep the size minimal (about 25% of an ubuntu-based image).

### Tags

* `latest` or `8` or `serverjre-8`: Oracle Java 8 (Server JRE) [![](https://badge.imagelayers.io/jeanblanchard/java:serverjre-8.svg)](https://imagelayers.io/?images=jeanblanchard/java:serverjre-8 'Get your own badge on imagelayers.io')
* `jdk-8`: Oracle Java 8 (JDK) [![](https://badge.imagelayers.io/jeanblanchard/java:jdk-8.svg)](https://imagelayers.io/?images=jeanblanchard/java:jdk-8 'Get your own badge on imagelayers.io')
* `jre-8`: Oracle Java 8 (JRE) [![](https://badge.imagelayers.io/jeanblanchard/java:jre-8.svg)](https://imagelayers.io/?images=jeanblanchard/java:jre-8 'Get your own badge on imagelayers.io')

Please note that Java 7 is unsupported by Oracle, as of April 2015, so the following tags
will not be updated past version 7u80, which has know security issues:

* `7` or `serverjre-7`: Oracle Java 7 (Server JRE) [![](https://badge.imagelayers.io/jeanblanchard/java:serverjre-7.svg)](https://imagelayers.io/?images=jeanblanchard/java:serverjre-7 'Get your own badge on imagelayers.io')
* `jdk-7`: Oracle Java 7 (JDK) [![](https://badge.imagelayers.io/jeanblanchard/java:jdk-7.svg)](https://imagelayers.io/?images=jeanblanchard/java:jdk-7 'Get your own badge on imagelayers.io')
* `jre-7`: Oracle Java 7 (JRE) [![](https://badge.imagelayers.io/jeanblanchard/java:jre-7.svg)](https://imagelayers.io/?images=jeanblanchard/java:jre-7 'Get your own badge on imagelayers.io')

Additionally, tags are created for each oracle release (e.g. jdk-8u45).

### Usage

Example: 

    docker run -it --rm jeanblanchard/java:8 java -version
