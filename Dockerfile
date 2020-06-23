# docker build -t beegosamples -f ./Dockerfile .
# To run the container:
# docker run -v ${PWD}/src:/go/src -p 9000:8080/tcp --name webim -it beegosamples

FROM docker.io/golang:latest
LABEL MAINTAINER="beego_samples"


COPY . /go/

ENV PATH $PATH:/go/src/github.com/beego/bee
WORKDIR /go/src/github.com/beego/samples/WebIM
CMD ["bee", "run"]