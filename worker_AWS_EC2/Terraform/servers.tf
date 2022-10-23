resource "aws_instance" "web" {
  ami                    = "ami-08c40ec9ead489470"
  instance_type          = "t2.micro"
  key_name               = "ansible-key"
  subnet_id              = module.infra_module.PublicSubnet1_id
  vpc_security_group_ids = [aws_security_group.slave_SG.id]

  tags = {
    Name = "Slave_EC2"
  }
  provisioner "local-exec" {
    command = "./launch_ansible_script.sh ${self.public_ip}"
  }
}