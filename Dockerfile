FROM scalyr/scalyr-agent-docker:2.1.34-alpine

RUN apk update && apk add --no-cache ca-certificates openssl

COPY certs/SectigoR46.crt /usr/local/share/ca-certificates/SectigoR46.crt
COPY certs/SectigoE46.crt /usr/local/share/ca-certificates/SectigoE46.crt

RUN update-ca-certificates

COPY run.sh /scalyr/run.sh
RUN chmod u+x /scalyr/run.sh
WORKDIR /scalyr
CMD [ "/scalyr/run.sh" ]
