#FROM eclipse-temurin:17-jre
#
#ADD build/libs/petclinic.jar /petclinic.jar
#ADD build/agent/opentelemetry-javaagent.jar /opentelemetry-javaagent.jar
#ENTRYPOINT java -javaagent:/opentelemetry-javaagent.jar -jar /petclinic.jar
#
#
#FROM otel/opentelemetry-collector-contrib:0.101.0
#
#COPY ./docker/collector/config.yml /etc/otelcol-contrib/config.yml

FROM otel/opentelemetry-collector-contrib:latest

WORKDIR /etc/otelcol-contrib

COPY otel-config.yaml /etc/otelcol-contrib/config.yaml
