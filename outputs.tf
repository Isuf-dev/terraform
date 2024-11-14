output "instance_id" {
  description = "The ID of the VM instance"
  value       = morpheus_vm.gcp_vm.id
}

output "instance_public_ip" {
  description = "The public IP address of the VM"
  value       = morpheus_vm.gcp_vm.public_ip
}

output "instance_private_ip" {
  description = "The private IP address of the VM"
  value       = morpheus_vm.gcp_vm.private_ip
}
