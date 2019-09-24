FROM golang:1.13

ENV CGO_ENABLED 0

WORKDIR /go/src/golang-fifa-world-cup-web-service

RUN addgroup --system projects && adduser --system projects --ingroup projects

RUN chown -R projects:projects /go/src/golang-fifa-world-cup-web-service

USER projects

COPY . .

RUN go install -v ./...
