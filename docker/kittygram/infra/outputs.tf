output "vm_name" {
  description = "Name of created VM."
  value       = yandex_compute_instance.vm_1.name
}

output "external_ip" {
  description = "Public IP of the VM."
  value       = yandex_compute_instance.vm_1.network_interface[0].nat_ip_address
}

output "kittygram_url" {
  description = "Suggested URL for Kittygram."
  value       = format("http://%s", yandex_compute_instance.vm_1.network_interface[0].nat_ip_address)
}
