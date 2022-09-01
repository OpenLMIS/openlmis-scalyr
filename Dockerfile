FROM scalyr/scalyr-agent-docker:2.1.34-alpine

COPY run.sh /scalyr/run.sh
RUN chmod u+x /scalyr/run.sh

WORKDIR /scalyr
CMD [ "/scalyr/run.sh" ]

