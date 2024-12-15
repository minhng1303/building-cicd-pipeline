https://github.com/minhng1303/building-cicd-pipeline

cd building-cicd-pipeline

make setup

source ~/.udacity-devops/bin/activate

make all

az webapp up \
    --resource-group flask-ml-service-rg \
    --name udacity-project-2-cicd \
    --sku F1 \
    --location southeastasia \
    --verbose