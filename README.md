## Minimal Docker image with Java [![Circle CI](https://circleci.com/gh/jeanblanchard/docker-java/tree/master.svg?style=shield)](https://circleci.com/gh/jeanblanchard/docker-java/tree/master)

Basic [Docker](https://www.docker.com/) image to run [Java](https://www.java.com/) applications.
This is based on [Alpine Linux](http://alpinelinux.org/) to keep the size minimal (about 25% of an ubuntu-based image).

You must accept the [Oracle Binary Code License Agreement for Java SE](http://www.oracle.com/technetwork/java/javase/terms/license/index.html) to use this image.

### Tags

* `latest` or `8` or `serverjre-8`: Oracle Java 8 (Server JRE)
* `jdk-8`: Oracle Java 8 (JDK)
* `jre-8`: Oracle Java 8 (JRE)

Experimental tags (early access) (You must accept the [Early Adopter Development License Agreement for Java SE](http://www.oracle.com/technetwork/licenses/ea-license-152003.html) to use this tags):

* `experimental-jdk` or `jdk-9-ea`: Oracle JDK 9 Early Access Release
* `experimental-jre` or `jre-9-ea`: Oracle JRE 9 Early Access Release

Please note that Java 7 is unsupported by Oracle, as of April 2015, so the following tags
will not be updated past version 7u80, which has know security issues:

* `7` or `serverjre-7`: Oracle Java 7 (Server JRE)
* `jdk-7`: Oracle Java 7 (JDK)
* `jre-7`: Oracle Java 7 (JRE)

Additionally, tags are created for each oracle release (e.g. jdk-8u45).

### Usage

Example: 

    docker run -it --rm jeanblanchard/java:8 java -version
