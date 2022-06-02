FROM camunda/camunda-bpm-platform:7.14.0

WORKDIR /camunda

COPY ./conf/bpm-platform.xml     conf/bpm-platform.xml
COPY ./conf/engine-rest.xml      conf/engine-rest.xml
COPY ./conf/webapp-sso.xml       conf/webapp-sso.xml

COPY ./libs/third-party-libs/7.14.x/target/dependency/   lib/
COPY ./libs/webapp-libs/7.14.x/target/dependency/        lib/webapps/camunda/WEB-INF/lib/
COPY ./libs/engine-rest-libs/7.14.x/target/dependency/   lib/engine-rest/camunda/WEB-INF/lib/
