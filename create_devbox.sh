if [ -z "$AWS_DEVBOX_SUBNETID" ]
then
      echo "\$AWS_DEVBOX_SUBNETID is empty"
      exit 1
fi
if [ -z "$AWS_DEVBOX_VPCID" ]
then
      echo "\$AWS_DEVBOX_VPCID is empty"
      exit 1
fi
aws cloudformation create-stack --stack-name "Dev-Box" --template-body file://dev_box_cf_template.yaml \
    --parameters ParameterKey=SubnetId,ParameterValue=$AWS_DEVBOX_SUBNETID ParameterKey=VpcId,ParameterValue=$AWS_DEVBOX_VPCID \
    --tags "Key=Team,Value=DRE" --capabilities CAPABILITY_IAM