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
aws cloudformation update-stack --stack-name "Dev-Box" \
    --use-previous-template \
    --parameters ParameterKey=SubnetId,ParameterValue=$AWS_DEVBOX_SUBNETID ParameterKey=VpcId,ParameterValue=$AWS_DEVBOX_VPCID \
    --capabilities CAPABILITY_IAM