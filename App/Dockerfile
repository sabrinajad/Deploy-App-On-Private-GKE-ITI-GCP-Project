FROM python:3.7-alpine3.15

# Create application directory
WORKDIR /application
# install the requirments
RUN pip install tornado
RUN pip install redis

# Copy application files
COPY . .

# Set env variables
ENV ENVIRONMENT=DEV
ENV PORT=8000
ENV HOST=localhost
ENV REDIS_HOST=redis
ENV REDIS_PORT=6379
ENV REDIS_DB=0

# Run the Application
CMD [ "python3", "hello.py" ]
