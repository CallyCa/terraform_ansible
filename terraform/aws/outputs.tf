output "public_dns_name" {
  description = "Public DNS names of the load balancer for this project"
  value       = module.elb_http.this_elb_dns_name
}

output "tags" {
  value = local.tags
}


output "web_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = [for instance in aws_instance.web : instance.public_ip]
}

output "ami_value" {
  value = var.aws_region
}

output "web_security_group_ids" {
  value = concat([module.app_security_group.this_security_group_id, module.ssh_security_group.this_security_group_id])
}