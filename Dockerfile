FROM gradle:6.7-jdk8 as builder

COPY . /app/
WORKDIR /app

#RUN gradle wrapper --no-daemon
RUN gradle build --no-daemon copyDeps 

FROM openjdk:8-alpine
#MAINTAINER Eric Goebelbecker "eric@ericgoebelbecker.com"
ENV JAVA_VERSION 8u31
ENV PACKAGE_ROOT /app
#ADD app /app/
COPY --from=builder /app/docker/app /app/
ENTRYPOINT ["/app/JaegerTutorial/bin/start.sh"]
CMD []
