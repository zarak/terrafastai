Script to manage the fast.ai network infrastructure on AWS using Terraform.

# Setup

- [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)
- Create a key-pair 
```
$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (~/.ssh/id_rsa): ~/.ssh/fastai
$ ssh-add ~/.ssh/fastai
```
- Clone this repo
```
$ git clone https://github.com/zarak/terrafastai.git
```
- Set the appropriate variables by running setup_t2.sh for a CPU based instance, or setup_p2.sh for a GPU based
   instance
- Apply configuration
```
$ terraform apply
```
