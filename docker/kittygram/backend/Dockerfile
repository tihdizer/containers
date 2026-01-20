FROM python:3.10
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .
CMD python manage.py migrate && python manage.py collectstatic --no-input && cp -r /app/collected_static/. /backend_static/ && python manage.py runserver 0:8000
