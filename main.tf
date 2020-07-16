#   resource "aws_key_pair" "aprilkey" {
#       key_name        = "aprilkey"
#       public_key      = file(var.path_to_public_key)
# }

resource "aws_instance" "myuserdata" {
    instance_type               = "t2.micro"
    ami                         = "ami-0c3e74fa87d2a4227"
    key_name                    = "aprilkey"
    user_data                   = data.template_file.myuserdata.template
    subnet_id                   = aws_subnet.My_VPC_Subnet.id
    vpc_security_group_ids      = [aws_security_group.My_VPC_Security_Group.id]
    associate_public_ip_address = true

  tags = {
    Name = "userdata_server"
  }

}

data "template_file" "myuserdata" {
  template = file("${path.cwd}/temp_works.tpl")

}


# resource "aws_instance" "app_server" {
#   ami                         = var.ami
#   key_name                    = var.key_name
#   instance_type               = var.instance_type
#   user_data                   = data.template_file.appserver_data.rendered
#   subnet_id                   = data.terraform_remote_state.config.outputs.subnet
#   vpc_security_group_ids      = [aws_security_group.app_server-sg.id]
#   associate_public_ip_address = true

#   tags = {
#     Name = "app_server"
#   }
# }
