FROM openjdk:11
EXPOSE 8080
ADD target/aws-code-pipeline-docker-ecr.jar aws-code-pipeline-docker-ecr.jar
ENTRYPOINT ["java","-jar","/aws-code-pipeline-docker-ecr.jar"]