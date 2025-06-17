output "db_instance" {
  value = google_sql_database_instance.db.connection_name
}

output "redis_host" {
  value = google_redis_instance.cache.host
}

output "static_bucket" {
  value = google_storage_bucket.static.name
}
