FROM heroku/jvm

COPY [".", "*.gradle", "gradlew", "*.properties", "/app/user/"]
COPY ["gradle/wrapper/*", "/app/user/gradle/wrapper/"]

RUN ./run.sh

#RUN ./gradlew clean bootRepackage
#
#CMD ["java -Dserver.port=5001 -jar build\libs\jalgoarena-api-*.jar"]

ENV EUREKA_URL=http://172.18.0.2:5000/eureka/

CMD ["./gradlew", "clean", "bootRun"]

