# AWS Development Box 

Cloudformation template for running a developmnet box on AWS with SSH connection.

## Bastion Host Setup
Enable Bastion host - follow instructions at [quickstart-linux-bastion](https://github.com/aws-quickstart/quickstart-linux-bastion)

Required environment variables:
```
export AWS_BASTION_VPCID="..."
export AWS_BASTION_SUBNET1ID="..."
export AWS_BASTION_SUBNET2ID="..."
export AWS_BASTION_KEYPAIRNAME="..."
export AWS_BASTION_REMOTEACCESSCIDR="..."
```
```
./create_bastion.sh
```

## Development Box Setup
KeyName pem file (default: `dev-box`) is required before runing the scripts!

Required environment variables:
```
export AWS_DEVBOX_VPCID="..."
export AWS_DEVBOX_SUBNETID="..."
export AWS_DEVBOX_KEYPAIRNAME="..."
```
```
./create_devbox.sh
```
