locals {
  common_tags = {
    owner   = "dev_team"
    service = "backend"
  }
  other_tags = {
    creator     = "cole"
    description = "Test ec2-instance"
  }
  time     = formatdate("DD MMM YYYY hh:mm:ZZZ", timestamp())
  sg_ports = [8200, 8201, 8300, 9200, 9500]
}