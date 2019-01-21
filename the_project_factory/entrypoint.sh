#!/bin/sh

sed -i "s#localhost#db#g" the_project_factory/settings.py
python manage.py makemigrations
python manage.py migrate
python manage.py loaddata db_dump.json
exec "$@"