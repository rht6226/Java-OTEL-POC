FROM openjdk:11-jre

ENV APP_NAME otel-petclinic
ENV APP_HOME /app/bin

RUN mkdir -p ${APP_HOME}

COPY ./target/*.jar ${APP_HOME}/${APP_NAME}.jar

ADD https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/v1.11.1/opentelemetry-javaagent.jar ${APP_HOME}/agent.jar 
COPY ./docker-entrypoint.sh ${APP_HOME}/

RUN chmod +x ${APP_HOME}/docker-entrypoint.sh

WORKDIR ${APP_HOME}

ENTRYPOINT [ "./docker-entrypoint.sh" ]