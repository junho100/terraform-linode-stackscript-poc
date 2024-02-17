# StackScript with a bash file
resource "linode_stackscript" "install_nginx" {
  label       = "install_nginx"
  description = "Installs nginx"
  script      = file("./files/install-nginx.sh")
  images      = ["linode/ubuntu20.04"]
}

# StackScript with a URL references to a bash file
resource "linode_stackscript" "install_nginx_with_url" {
  label       = "install_nginx"
  description = "Installs nginx"
  script      = data.http.nginx_install_script.response_body
  images      = ["linode/ubuntu20.04"]
}

# Data source to get the bash file from the URL
data "http" "nginx_install_script" {
  url = var.nginx_install_script_url
}
