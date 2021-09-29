FROM python:2

WORKDIR /app
 
COPY . .

RUN pip install -r requirements.txt ;\
    ./notejam/manage.py syncdb --noinput ;\
    ./notejam/manage.py migrate

ENTRYPOINT python ./notejam/manage.py runserver 0.0.0.0:8000

