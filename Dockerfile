FROM python:3.10
LABEL authors="titouanrobe"

EXPOSE 8000
#ENTRYPOINT ["top", "-b"]
WORKDIR /app

COPY . .

RUN pip install django==4.2.16

RUN pwd

#CMD ["python", "./manage.py migrate"]

#CMD ["./manage.py", "migrate", "runserver 0.0.0.0:8000"]

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]