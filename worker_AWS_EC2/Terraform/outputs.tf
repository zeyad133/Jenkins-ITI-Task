output "vpc_id" {
  value = module.infra_module.vpc_id
}

output "PublicSubnet1_id" {
  value = module.infra_module.PublicSubnet1_id
}
output "PublicSubnet2_id" {
  value = module.infra_module.PublicSubnet2_id
}

output "PrivateSubnet1_id" {
  value = module.infra_module.PrivateSubnet1_id
}
output "PrivateSubnet2_id" {
  value = module.infra_module.PrivateSubnet2_id
}

output "sg_id" {
  value = aws_security_group.allow_http.id
}