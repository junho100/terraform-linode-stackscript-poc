resource "linode_stackscript" "install_nginx" {
  label       = "install_nginx"
  description = "Installs nginx"
  script      = file("./files/install-nginx.sh")
  images      = ["linode/ubuntu20.04"]
}
