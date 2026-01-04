FROM quay.io/drsylent/cubix/block2/homework-base:java21

ARG OWNER="Levente Pápes"
ARG APP_DIR

LABEL cubix.homework.owner="${OWNER}"

ENV CUBIX_HOMEWORK="${OWNER}"
ENV APP_DEFAULT_MESSAGE=""

WORKDIR /app
COPY ${APP_DIR}/target/*.jar /app/app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
