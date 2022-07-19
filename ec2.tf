resource "aws_instance" "ec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type["machine1"]
}

resource "aws_instance" "dev" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type["machine1"]
  count         = var.is_test == true ? 1 : 0
  tags          = local.common_tags
}

resource "aws_instance" "prod" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type["machine1"]
  count         = var.is_test == false ? 1 : 0
  tags          = local.common_tags
}

resource "aws_instance" "imported-ec2" {
  ami                    = "ami-07251f912d2a831a3"
  instance_type          = var.instance_type["machine1"]
  provider               = aws.ohio

  tags = {
    Name = "imported-ec2"
  }
}

resource "aws_instance" "test-ec2" {
  ami = data.aws_ami.app_ami.id
  instance_type = var.instance_type["machine1"]
  tags = local.other_tags
}

output "timestamp" {
  value = local.time
}

output "tags" {
  value = local.common_tags
}