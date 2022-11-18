FROM python:3.7-alpine3.15

WORKDIR /application
RUN pip install tornado
RUN pip install redis
COPY . .
ENV ENVIRONMENT=DEV
ENV PORT=8000
ENV HOST=localhost
ENV REDIS_HOST=redis
ENV REDIS_PORT=6379
ENV REDIS_DB=0
CMD [ "python3", "hello.py" ]
