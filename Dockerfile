# Dockerfile
FROM python:3.9
WORKDIR /CanLookup
COPY requirements.txt /CanLookup/
RUN pip install -r requirements.txt
COPY . /CanLookup
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
