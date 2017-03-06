Script to manage the [fast.ai](https://github.com/fastai/courses) network infrastructure on an AWS VPC using Terraform.

# Setup

1. [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)
2. [Create a key-pair](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)  

    ```
    $ ssh-keygen   
    Generating public/private rsa key pair.   
    Enter file in which to save the key (~/.ssh/id_rsa): ~/.ssh/fastai   
    $ ssh-add ~/.ssh/fastai  
    ```
    
3. Clone this repo  
    ```
    $ git clone https://github.com/zarak/terrafastai.git
    ```
4. Set the appropriate variables by running setup_t2.sh for a CPU based instance, or setup_p2.sh for a GPU based
   instance
5. You may wish to create a file named `terraform.tfvars` containing your AWS credentials and the path to your SSH key; but make sure you add it to your `.gitignore`. For example,   

    ```
    aws_access_key = ""  
    aws_secret_key = ""  
    aws_key_path = "/path/to/.ssh/fastai.pub"  
    aws_key_name = "fastai"  
    ```
    
5. Run the command `terraform apply` from the terrafastai directory  
    ```
    $ terraform apply
    ```
6. SSH into the instance using the ip obtained from `terraform output`. For example,  

    ```
    $ terraform output ip  
    52.26.22.204
    $ ssh ubuntu@52.26.22.204  
    ```
