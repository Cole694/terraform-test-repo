resource "aws_key_pair" "login_key" {
  key_name   = "loginKey"
  public_key = file("${path.module}/id_rsa.pub")
}