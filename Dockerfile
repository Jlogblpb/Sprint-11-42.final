FROM golang:1.22.1
WORKDIR usr/src/app
COPY . .
RUN go mod tidy
RUN CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -o /my_app
CMD ["/my_app"]