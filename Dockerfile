FROM python:3.9

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY ./requirements/base.txt ./requirements/base.txt
RUN pip install -r ./requirements/base.txt

COPY . .