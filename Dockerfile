FROM openjdk:8
EXPOSE 8080
ADD target/PharmaManagement-0.0.1-SNAPSHOT.war PharmaManagement-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/PharmaManagement-0.0.1-SNAPSHOT.war "] 