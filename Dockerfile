FROM python:3.9 

RUN pip install Django

WORKDIR /code
RUN django-admin startproject myproject .

WORKDIR /code

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
