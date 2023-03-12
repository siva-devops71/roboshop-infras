module "ec2" {
  for_each      = var.instances
  source        = "./ec2"
  component     = each.value["name"]
  instance_type = each.value["type"]
  password      = each.value["password"]
  private_ip = each.value["ip"]
}