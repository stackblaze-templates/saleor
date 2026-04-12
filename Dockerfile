FROM python:3.14-slim
WORKDIR /app
RUN apt-get update && apt-get install -y git gcc libpq-dev && pip install saleor
EXPOSE 8000
