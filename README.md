# django-gcp-project

A Django 4.2 project configured for deployment on Google Cloud Platform using Cloud Run and Terraform.

## Setup

Create a virtual environment and install dependencies:

```bash
python -m venv venv && source venv/bin/activate
pip install -r requirements/dev.txt
```

Run migrations and start the server:

```bash
python manage.py migrate
python manage.py runserver
```

## Deployment

Use the provided `Dockerfile` and `cloudbuild.yaml` with Cloud Build triggers to build and deploy.
Infrastructure resources are defined in `terraform/`.
