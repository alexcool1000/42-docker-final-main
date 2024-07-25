FROM golang:1.22.0

WORKDIR /42dock

COPY go.mod go.sum ./

RUN go mod download

COPY *.* ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /my_42dock

CMD ["/my_42dock"] 