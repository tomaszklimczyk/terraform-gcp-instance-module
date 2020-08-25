output "vm" {
  description = "The created VM as an object with all of it's attributes. This was created using the google_compute_instance resource."
  value       = google_compute_instance.instance
}
