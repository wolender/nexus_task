FROM openjdk:17
RUN mkdir /usr/src/petclinic
WORKDIR /usr/src/petclinic
COPY target/*.jar /usr/src/petclinic/
RUN chmod 777 *.jar
EXPOSE 8080
CMD ["java","-jar","spring-petclinic-3.1.0.jar"]

