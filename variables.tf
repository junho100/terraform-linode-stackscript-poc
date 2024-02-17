variable "token" {
  description = "The Linode API token"
  type        = string
}

variable "instance_password" {
  description = "The root password for the Linode instance"
  type        = string
}

variable "nginx_install_script_url" {
  description = "The URL of the nginx installation script"
  type        = string
  default     = "https://raw.githubusercontent.com/junho100/terraform-linode-stackscript-poc/master/files/install-nginx.sh"
}
