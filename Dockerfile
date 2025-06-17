FROM python:3.9-slim
WORKDIR /app

COPY requirements/prod.txt /app/
RUN pip install --no-cache-dir -r prod.txt

COPY . /app

ENV PYTHONUNBUFFERED=1
CMD ["gunicorn", "config.wsgi:application", "--bind", ":$PORT", "--workers", "3"]
