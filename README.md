# terrafastai

1. Install Terraform
2. Create a key-pair 
```
$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (~/.ssh/id_rsa): ~/.ssh/fastai
$ ssh-add ~/.ssh/fastai
```
3. Set the appropriate variables by running setup_t2.sh for a CPU based instance, or setup_p2.sh for a GPU based
   instance
