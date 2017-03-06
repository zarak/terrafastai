#!/bin/bash
#
# Configure a p2.xlarge instance

# get the correct ami
export TF_VAR_region=`aws configure get region`
if [ $TF_VAR_region = "us-west-2" ]; then
   export TF_VAR_ami="ami-bc508adc" # Oregon
elif [ $TF_VAR_region = "eu-west-1" ]; then
   export TF_VAR_ami="ami-b43d1ec7" # Ireland
elif [ $TF_VAR_region = "us-east-1" ]; then
  export TF_VAR_ami="ami-31ecfb26" # Virginia
else
  echo "Only us-west-2 (Oregon), eu-west-1 (Ireland), and us-east-1 (Virginia) are currently supported"
  exit 1
fi

export TF_VAR_instance_type="p2.xlarge"
