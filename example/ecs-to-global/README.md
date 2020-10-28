# Deploy/Update ecs  task to mutiple regions

### Introduction

In this demo case, there will be two **hardcoded** region to deploy the entire infra and ECS cluster, which will be enhanced with dynamic way. 

However, you may add or modify **hardcoded** region as you like.

### Prerequisite

1. Enough IAM right 
   * Provision infra
   * Provision ecs
2. Ensure enough resoure 
   * As this demo will provision entire aws infra onto us-east-1 and us-west-2, you have to ensure you** EIP** and other resource **does not exceed the limit**
3. [Terraform version >= v0.13](https://www.terraform.io/downloads.html)



### How to

#### 1.Provision

* Download repo

  ```
  git clone https://github.com/jansony1/terraform-demo.git
  ```

* Initiate module

  ```
  cd example/ecs-to-global/
  terraform init
  ```

* Examine which resouce will be deployed or changed

  ```
  terraform plan
  ```

* Execute 

  ```
  terraform apply -auto-apply
  ```

#### 2. Update Task

* Modify image

  ```
  $ example/ecs-to-global: vim terraform.tfvars
  
  app_image = "nginx:1.19"
  app_count = "2"
  ```

   Change image from **1.19 to 1.19.3**

  ```
  $ example/ecs-to-global: cat terraform.tfvars
  
  app_image = "nginx:1.19.3"
  app_count = "2"
  ```

* Examine which resouce will be  changed

  ```
  terraform plan
  ```

* Execute 

  ```
  terraform apply -auto-apply
  ```

  #### 

  

  

