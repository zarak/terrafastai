#!/bin/bash
#
# Configure a t2.xlarge instance

# get the correct ami
export TF_VAR_region=`aws configure get region`
if [ $TF_VAR_region = "us-west-2" ]; then
   export TF_VAR_ami="ami-f8fd5998" # Oregon
elif [ $TF_VAR_region = "eu-west-1" ]; then
   export TF_VAR_ami="ami-9e1a35ed" # Ireland
elif [ $TF_VAR_region = "us-east-1" ]; then
  export TF_VAR_ami="ami-9c5b438b" # Virginia
else
  echo "Only us-west-2 (Oregon), eu-west-1 (Ireland), and us-east-1 (Virginia) are currently supported"
  exit 1
fi

export TF_VAR_instance_type="t2.xlarge"

/usr/local/terraform/bin/terraform plan
