FROM python:3.7

RUN apt-get update && apt-get install netcat -y
RUN pip install pipenv

ENV ROOT /app/

RUN mkdir $ROOT
COPY ./Pipfile $ROOT
COPY ./Pipfile.lock $ROOT

WORKDIR $ROOT
RUN pipenv install --deploy --system

COPY . $ROOT

WORKDIR $ROOT

RUN chmod +x entrypoint.sh
