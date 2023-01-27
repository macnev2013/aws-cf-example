#!/bin/bash
client_ip=$(curl ifconfig.me -s)/32

aws cloudformation create-stack \
    --template-body file://kinesis-rds-dms.yaml \
    --stack-name test-cnf-stack \
    --parameters ParameterKey=ClientIP,ParameterValue="$client_ip" ParameterKey=ExistsDMSVPCRole,ParameterValue="Y" ParameterKey=ExistsDMSCloudwatchRole,ParameterValue="Y" ParameterKey=RDSAdminPassword,ParameterValue="asjhgiuheihiuwgdca" \
    --capabilities CAPABILITY_NAMED_IAM \
    --profile ls \
    --region us-east-1

aws cloudformation wait stack-create-complete \
    --stack-name test-cnf-stack \
    --profile ls \
    --region us-east-1 
