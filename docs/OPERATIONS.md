# Operations Guide

## Logging and Monitoring
- Uses Google Cloud Logging via `google-cloud-logging` handler.
- Create Cloud Monitoring dashboards for error rates and latency.

## Troubleshooting
- **Cloud SQL Connection**: ensure `DB_HOST` matches the Cloud SQL instance connection name. For private connections, use Cloud SQL Proxy.
- **Redis Access**: verify Memorystore is in the same VPC and that environment variables `REDIS_HOST` and `REDIS_PORT` are set.
- **Cold Starts**: consider setting `min-instances` for Cloud Run and keep dependencies slim to reduce startup time.
