resource "linode_instance" "nginx_userdata" {
  label     = "simple_instance_userdata"
  image     = "linode/ubuntu20.04"
  region    = "jp-osa"
  type      = "g6-nanode-1"
  root_pass = var.instance_password

  interface {
    purpose = "public"
  }

  private_ip = true

  stackscript_id = linode_stackscript.install_nginx.id
}