FROM rocker/r-base

WORKDIR /app

ADD . /app

CMD ["./script.R"]

