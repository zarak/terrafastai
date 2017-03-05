Script to manage the [fast.ai](https://github.com/fastai/courses) network infrastructure on AWS using Terraform.

# Setup

1. [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)
2. Create a key-pair  

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
5. Run the command `terraform apply` from the terrafastai directory  
    ```
    $ terraform apply
    ```
