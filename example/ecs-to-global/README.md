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

  


