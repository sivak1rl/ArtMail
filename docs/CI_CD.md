# CI/CD

Cloud Build is configured via `cloudbuild.yaml`. Triggers should run on pushes to `main` and execute unit tests and linting before deploying to Cloud Run.

Sensitive settings are stored in Secret Manager and injected as environment variables during deployment.
