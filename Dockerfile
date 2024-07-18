#FROM eclipse-temurin:17-jre
#
#ADD build/libs/petclinic.jar /petclinic.jar
#ADD build/agent/opentelemetry-javaagent.jar /opentelemetry-javaagent.jar
#ENTRYPOINT java -javaagent:/opentelemetry-javaagent.jar -jar /petclinic.jar
#
#
