FROM ubuntu:18.10

RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip nginx uwsgi-plugin-python3

COPY ./ ./app

WORKDIR ./app

RUN pip3 install -r requirements.txt
RUN rm /etc/nginx/sites-enabled/default


COPY ./myproject /etc/nginx/sites-enabled/

CMD service nginx start && uwsgi --ini app.ini



