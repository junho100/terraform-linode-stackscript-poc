# terraform-linode-stackscript-poc

Verify if dynamic script reflection is possible based on bash scripturl

## Introduction

This terraform code create two linode stackscript resources. One references local bash file(./files/install-nginx.sh), the other references bash file download url.
Install and run nginx to verify that the each stackscript works normally.

## How to execute

1. make "terraform.tfvars" file in root dir.
2. add variable information in the file.

```
token="<LINODE API V4 TOKEN>"
instance_password="<PASSWORD FOR LINODE INSTANCE>"
```

3. terraform init
4. terraform plan & terraform apply
5. Wait for creation and script execution
6. Connect to the linode public ip with port 80
