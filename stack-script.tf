resource "linode_stackscript" "install_nginx" {
  label       = "install_nginx"
  description = "Installs nginx"
  script      = file("./files/install-nginx.sh")
  images      = ["linode/ubuntu20.04"]
}

resource "linode_stackscript" "install_nginx_with_url" {
  label       = "install_nginx"
  description = "Installs nginx"
  script      = data.http.nginx_install_script.response_body
  images      = ["linode/ubuntu20.04"]
}

data "http" "nginx_install_script" {
  url = var.nginx_install_script_url
}
