<p align="center">
  <img src="https://www.datocms-assets.com/2885/1620155117-brandhcterraformverticalcolorwhite.svg" alt="Terraform"/>
</p>
<h1 align="center" style="margin-top: 0px;"> Terraform </h1>


 
# It's My Documentation About Terraform

Terraform = *Infrastructure as Code* (IaC)

## Structure
~~~bash  
CloudComputing
    │
    ├── Terraform 
    │   ├── EC2
    │   └── README.md
    └── ...
~~~





## Get started   
### Download & Install Terraform

You can check Terraform Official website

~~~bash  
https://developer.hashicorp.com/terraform/downloads
~~~

Check Terraform version  

~~~bash  
$ terraform -v 
Terraform v1.3.4
~~~

### AWS Credentials

- You must set your **AWS Credentials**, Go to **Settings > Security Credentials  > Access keys > Create New Access Key** 

- But if you want to more secure you can make one by create user with **Access key - Programmatic access**, And attach role **AdministratorAccess**.

~~~bash
$ export AWS_ACCESS_KEY_ID=""    
$ export AWS_SECRET_ACCESS_KEY=""
~~~

> **Note** : Here i use **AWS** as my cloud provider, but you can change **AWS_ACCESS_KEY_ID** and **AWS_SECRET_ACCESS_KEY** variabels name according to the terms of each provider 

## Terraform Command

#### Downloads and installs plugins for providers used within the configuration

~~~bash
$ terraform init
~~~

#### See the changes that will take place on the infrastructure

~~~bash
$ terraform plan
~~~

#### Create the resources according the main.tf file

~~~bash
$ terraform apply
~~~

#### Delete all those resources

~~~bash
$ terraform destroy
~~~
