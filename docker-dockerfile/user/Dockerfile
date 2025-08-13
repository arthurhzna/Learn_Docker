FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S arthurgroup
RUN adduser -S -D -h /app arthuruser arthurgroup
RUN chown -R arthuruser:arthurgroup /app

USER arthuruser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go