FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt ./

RUN pip install --upgrade Pillow

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "django_web_app/manage.py", "runserver", "0.0.0.0:8000"]
