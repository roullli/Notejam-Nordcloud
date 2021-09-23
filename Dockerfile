FROM python:2

WORKDIR /app
 
COPY . .

RUN set -ex ;\
    pip install -r requirements.txt 
    # ./notejam/manage.py syncdb --noinput &&\
    # ./notejam/manage.py migrate

# RUN chmod a+x ./entrypoint.sh

ENTRYPOINT ["sh", "./entrypoint.sh"]

STOPSIGNAL SIGQUIT
# VOLUME /app