#/usr/bin/env bash

cd $ROOT\playground
while ! nc -z postgres 5432; do sleep 1; done
python manage.py migrate --settings=playground.settings
python manage.py runserver 0.0.0.0:8000 --settings=playground.settings
