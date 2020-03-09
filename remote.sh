# Project/Other related setup
ssh-keyscan gitlab.com >> ~/.ssh/known_hosts
cd /home/ubuntu
mkdir code && cd code
mkdir tf && cd tf
git clone git@gitlab.com:boston-scientific/dre/scootaloo-data-ingestion/docker-gcp-ingest-tf.git
git clone git@gitlab.com:boston-scientific/dre/scootaloo-data-ingestion/docker-infra.git