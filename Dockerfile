FROM ubuntu

WORKDIR /usr/src/phantom

COPY phantom-linux .

RUN chmod u+x ./phantom-linux

EXPOSE ${PORT}

RUN echo Connecting to server ${SERVER}:${PORT}

CMD ./phantom-linux -server ${SERVER}:${PORT}