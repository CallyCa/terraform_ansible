output "public_ip" {
  value = "${module.ec2.aws_instance.aws_instance.public_ip}"
}
