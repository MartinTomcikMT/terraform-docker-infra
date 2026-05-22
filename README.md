# 🖥️ Terraform Docker Infra

Simple Infrastructure as Code project for creating a Docker container using Terraform.

---

## 🎯 Project Goal

The goal of this project was to:

* practice basic Terraform workflow
* understand how Terraform providers work
* use Terraform to manage Docker resources
* deploy a simple Nginx container with Terraform
* learn the difference between Terraform configuration and real infrastructure
* verify the deployed container locally through `localhost`

---

## ⏱️ Project Status

**Status:** Completed – Phase 1  
**Current Phase:** Phase 1 – Basic Infrastructure Deployment  
**Type:** Infrastructure as Code / DevOps Lab  
**Technologies:** Terraform, Docker, Nginx, WSL, VS Code

---

## ⚙️ Features

* Uses Terraform Docker provider
* Pulls the `nginx:latest` Docker image
* Creates a Docker container named `terraform-nginx`
* Maps container port `80` to local port `8080`
* Allows local testing through `http://localhost:8080`
* Demonstrates basic Terraform workflow:
  * `terraform init`
  * `terraform fmt`
  * `terraform validate`
  * `terraform plan`
  * `terraform apply`
  * `terraform destroy`

---

## 🛠️ Technologies Used

* **Terraform** – Infrastructure as Code tool
* **Docker** – Container platform
* **Nginx** – Web server running inside the container
* **WSL** – Linux environment on Windows
* **VS Code** – Code editor
* **Git & GitHub** – Version control and project hosting

---

## 👍 Pre-requisites

To run this project, make sure you have the following installed:

- Terraform
- Docker
- Git
- WSL, if you are working on Windows
- VS Code, optional but recommended

Check installed versions:

```bash
terraform version
docker version
git --version
