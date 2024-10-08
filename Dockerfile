FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# copier les services
COPY ./movie-service /code/movie-service
COPY ./cast-service /code/cast-service

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
