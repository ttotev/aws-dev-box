aws cloudformation create-stack --stack-name "Bastion-Host" --template-url "https://aws-quickstart.s3.amazonaws.com/quickstart-linux-bastion/templates/linux-bastion.template" \
    --parameters ParameterKey=VPCID,ParameterValue=$AWS_BASTION_VPCID \
        ParameterKey=PublicSubnet1ID,ParameterValue=$AWS_BASTION_SUBNET1ID \
        ParameterKey=PublicSubnet2ID,ParameterValue=$AWS_BASTION_SUBNET2ID \
        ParameterKey=BastionHostName,ParameterValue="dev-dre-bastion" \
        ParameterKey=RemoteAccessCIDR,ParameterValue=$AWS_BASTION_REMOTEACCESSCIDR \
        ParameterKey=KeyPairName,ParameterValue=$AWS_BASTION_KEYPAIRNAME \
        ParameterKey=BastionAMIOS,ParameterValue="Ubuntu-Server-18.04-LTS-HVM" \
    --tags "Key=Team,Value=DRE" --capabilities CAPABILITY_IAM