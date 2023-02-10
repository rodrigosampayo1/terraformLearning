output "instance_ip" {
    description = "VM's private ip"
    value       = aws_instance.app_server.private_ip
}