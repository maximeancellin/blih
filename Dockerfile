FROM python:3.8

WORKDIR /app

RUN wget https://raw.githubusercontent.com/Epitech/dump/master/blih.py -P /app/

COPY ./entrypoint.sh /app/

ENTRYPOINT [ "/app/entrypoint.sh" ]
