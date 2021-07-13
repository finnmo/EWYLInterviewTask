FROM ubuntu:18.04
COPY ./file.sh /
ENTRYPOINT ["/filesh"]
