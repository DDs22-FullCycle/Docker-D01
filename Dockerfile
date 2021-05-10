FROM golang:1.16 AS golang_dev

WORKDIR /go/src/app
COPY . .

RUN go build main.go

FROM scratch 
WORKDIR /go/src/app
COPY --from=golang_dev /go/src/app/main .
ENTRYPOINT ["./main"]