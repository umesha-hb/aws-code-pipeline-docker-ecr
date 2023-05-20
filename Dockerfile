
FROM golang:1.12-alpine AS build
#Install git
RUN apk add --no-cache git
#Get the hello world package from a GitHub repository
RUN go get github.com/golang/example/hello
WORKDIR /go/src/github.com/golang/example/hello
# Build the project and send the output to /bin/HelloWorld
RUN go build -o /bin/HelloWorld

FROM golang:1.12-alpine
#Copy the build's output binary from the previous build container
COPY --from=build /bin/HelloWorld /bin/HelloWorld
ENTRYPOINT ["/bin/HelloWorld"]
FROM openjdk:11
EXPOSE 8080
ADD target/aws-code-pipeline-docker-ecr.jar aws-code-pipeline-docker-ecr.jar
ENTRYPOINT ["java","-jar","/aws-code-pipeline-docker-ecr.jar"]