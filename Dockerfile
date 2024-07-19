# base --------------------------------

FROM golang:latest AS base

WORKDIR /app

COPY . /app

# build --------------------------------

FROM base AS build

WORKDIR /app

RUN go build -o main ./cmd

# test --------------------------------

FROM base AS test

WORKDIR /app

RUN go test ./...

# target --------------------------------
    
FROM scratch

WORKDIR /app

COPY --from=build /app/main /app/main

ENTRYPOINT ["/app/main"]