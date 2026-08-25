FROM eclipse-temurin:21-jdk
LABEL authors="ddim2"

WORKDIR /app

COPY build/libs/AirticketBooking-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8078

ENTRYPOINT ["java", "-jar", "/app/app.jar"]