if [ -z "$AWS_DEVBOX_IP" ]
then
      echo "\$AWS_DEVBOX_IP is empty"
      exit 1
fi

scp -i "${AWS_DEVBOX_KEYPAIRNAME}.pem" ~/.ssh/id_rsa "ubuntu@${AWS_DEVBOX_IP}:/home/ubuntu/.ssh/"
ssh -i "${AWS_DEVBOX_KEYPAIRNAME}.pem" "ubuntu@${AWS_DEVBOX_IP}" chmod 400 /home/ubuntu/.ssh/id_rsa