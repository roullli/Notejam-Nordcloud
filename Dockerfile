FROM python:2

WORKDIR /app
 
COPY . .

RUN pip install -r requirements.txt &&\
    ./notejam/manage.py syncdb --noinput &&\
    ./notejam/manage.py migrate

RUN chmod a+x ./entrypoint.sh
EXPOSE 8000

CMD ["sh", "./entrypoint.sh"]

VOLUME /app