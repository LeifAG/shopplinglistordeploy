#!/bin/bash

echo "Installing requirements..."
python3 -m pip install -r requirements.txt

echo "Running migrations..."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo "Collecting static files..."
python3 manage.py collectstatic --noinput

echo "Listing contents of staticfiles directory..."
ls -R staticfiles