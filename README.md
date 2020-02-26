# AWS Development Box 

Cloudformation template for running a developmnet box on AWS with SSH connection.

*The scripts can be run from git-bash installed on Windows*

Create key-pair and download here private key

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
Transfer GitLab or any other SSH identity private file to the new instance

Required environment variables:
```
export AWS_DEVBOX_IP="..."
```
```
./setup_privatekeys.sh
```
## Setup SSH conection from Visual Studio Code to the new intsance (~/.ssh/config)
```
Host devbox
    HostName ...IP address..
    User ubuntu
    IdentityFile ...path to identity file...
```
Open Remote Window from VSC and choose *devbox*