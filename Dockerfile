FROM ubuntu

WORKDIR /usr/src/phantom

COPY phantom-linux .

RUN chmod u+x ./phantom-linux

EXPOSE 19132

CMD ./phantom-linux -server ${SERVER}:${PORT}