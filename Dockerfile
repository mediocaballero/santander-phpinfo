FROM alpine:latest
RUN apk add php
WORKDIR /app
copy src .
ENTRYPOINT ["php"]
CMD ["-f","index.php","-S","0.0.0.0:8080"]
