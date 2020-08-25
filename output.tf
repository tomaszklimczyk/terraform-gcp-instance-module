output "vm" {
  description = "The created VM as an object with all of it's attributes. This was created using the google_compute_instance resource."
  value       = google_compute_instance.instance
}

output "fw" {
  description = "The created FW rule as an object with all of it's attributes. This was created using the google_compute_firewall resource."
  value       = google_compute_firewall.fw
}
