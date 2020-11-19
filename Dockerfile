FROM golang:1.14.3-alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /go/bin/hotrod-linux .
ENTRYPOINT ["/go/bin/hotrod-linux"]
CMD ["all"]

#FROM scratch
#ARG TARGETARCH=amd64
#EXPOSE 8080 8081 8082 8083
#COPY ./hotrod /go/bin/hotrod-linux
#ENTRYPOINT ["/go/bin/hotrod-linux"]
#CMD ["all"]
