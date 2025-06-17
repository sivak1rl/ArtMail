provider "google" {
  project = var.project_id
  region  = var.region
  credentials = file(var.credentials_file)
}

resource "google_sql_database_instance" "db" {
  name             = "django-db"
  database_version = "POSTGRES_14"
  settings {
    tier = "db-custom-1-3840"
  }
}

resource "google_sql_user" "django" {
  name     = var.db_user
  instance = google_sql_database_instance.db.name
  password = var.db_password
}

resource "google_redis_instance" "cache" {
  name           = "django-cache"
  tier           = "BASIC"
  memory_size_gb = 1
  region         = var.region
}

resource "google_storage_bucket" "static" {
  name     = "${var.project_id}-static"
  location = var.region
}

resource "google_storage_bucket" "media" {
  name     = "${var.project_id}-media"
  location = var.region
}
