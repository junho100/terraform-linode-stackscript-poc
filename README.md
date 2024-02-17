# terraform-linode-stackscript-poc

Verify if dynamic script reflection is possible based on bash scripturl

## How to execute

1. make "terraform.tfvars" file in root dir.
2. add variable information in the file.

```
token="<LINODE API V4 TOKEN>"
instance_password="<PASSWORD FOR LINODE INSTANCE>"
```

3. terraform init
4. terraform plan & terraform apply
