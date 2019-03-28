
# build stage
FROM golang:alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /build/server

# run stage
FROM alpine
WORKDIR /srv/knative-build-kaniko
COPY --from=build /build/server .
ENTRYPOINT  [ "./server" ]
