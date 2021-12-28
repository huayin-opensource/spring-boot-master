FROM openjdk:8-jdk
LABEL maintainer="K8sCat <k8scat@gmail.com>"
WORKDIR /opt/master
COPY . .
RUN ./mvnw install
CMD [ "./mvnw", "spring-boot:run" ]