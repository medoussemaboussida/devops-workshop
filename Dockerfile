FROM alpine

RUN apk add --no-cache openjdk11

EXPOSE 80

CMD ["java"]
