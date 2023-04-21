FROM openjdk:17
RUN mkdir /usr/src/petclinic
WORKDIR /usr/src/petclinic
COPY target/*.jar /usr/src/petclinic/
RUN chmod 777 *.jar
CMD ["java","-jar","spring-petclinic-3.1.0.jar", "&"]

