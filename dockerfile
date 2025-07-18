FROM golang:1.23

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY web/ ./web/

RUN go build -o main ./web

CMD ["./main"]