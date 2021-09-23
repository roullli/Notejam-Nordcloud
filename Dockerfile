FROM python

WORKDIR /app
 
COPY . .

RUN set -ex ;\
    pip install -r requirements.txt ;\
    ./notejam/manage.py syncdb --noinput ;\
    ./notejam/manage.py migrate

# RUN chmod a+x ./entrypoint.sh

ENTRYPOINT ./notejam/manage.py runserver 0.0.0.0:8000

# VOLUME /app