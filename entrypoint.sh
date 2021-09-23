set -ex
./notejam/manage.py syncdb --noinput
./notejam/manage.py migrate 
./notejam/manage.py runserver 0.0.0.0:8000