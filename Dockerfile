FROM alpine:latest
LABEL email="jason.granzow@gmail.com"

RUN apk --update --no-cache upgrade \
	&& apk --no-cache add iperf3

EXPOSE 5201/tcp 5201/udp
CMD iperf3 -s
