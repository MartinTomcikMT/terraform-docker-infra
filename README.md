# 🖥️ Terraform Docker Infra

Simple Infrastructure as Code project for creating a Docker container using Terraform.

---

## 🎯 Project Goal

The goal of this project was to:

PHASE 1  
* practice basic Terraform workflow
* understand how Terraform providers work
* use Terraform to manage Docker resources
* deploy a simple Nginx container with Terraform
* learn the difference between Terraform configuration and real infrastructure
* verify the deployed container locally through `localhost`
PHASE 2  
* improve Terraform project structure
* replace hardcoded values with variables
* add Terraform outputs for useful deployment information
* make the project easier to read, maintain and extend

---

## ⏱️ Project Status

**Status:** Completed – Phase 2  
**Current Phase:** Phase 2 – Project Structure & Best Practices  
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
```

Check if Docker is running:

```bash
docker ps
```

If Docker is running correctly, this command should return a container list, even if the list is empty.

### 💻 Supported environments

- Linux / macOS / Windows
- WSL (Windows Subsystem for Linux)

---

## 🚀 Installation

```bash
git clone https://github.com/MartinTomcikMT/terraform-docker-infra.git
cd terraform-docker-infra
```

---

## ▶️ How to Run

Format Terraform files:

```bash
terraform fmt
```

Initialize Terraform and download the required Docker provider:

```bash
terraform init
```

Validate Terraform configuration:

```bash
terraform validate
```

Preview what Terraform will create:

```bash
terraform plan
```

Apply the configuration and create the Docker container:

```bash
terraform apply
```

Confirm with:

```text
yes
```

After successful deployment, Terraform displays useful outputs:

```text
application_url = "http://localhost:8080"
container_name  = "terraform-nginx"
image_name      = "nginx:latest"

Verify that the container is running:

```bash
docker ps
```

Test the Nginx web server:

```bash
curl http://localhost:8080
```

Or open in browser:

```text
http://localhost:8080
```

Destroy the created infrastructure:

```bash
terraform destroy
```

Confirm with:

```text
yes
```

---

## 🚀 How It Works

1. Terraform reads the configuration from multiple `.tf` files.
2. `main.tf` defines the Docker image and Docker container resources.
3. `variables.tf` defines configurable values such as image name, container name and ports.
4. `outputs.tf` defines useful information displayed after deployment.
5. Terraform downloads and uses the Docker provider.
6. The Docker provider communicates with the local Docker daemon.
7. Terraform pulls the `nginx:latest` Docker image.
8. Terraform creates a Docker container named `terraform-nginx`.
9. Local port `8080` is mapped to container port `80`.
10. The Nginx default page is available at `http://localhost:8080`.
11. When `terraform destroy` is executed, Terraform removes the created container.

---

## 🧠 What I Learned

PHASE 1  
- how to create a basic Terraform project
- how to configure a Terraform provider
- how Terraform uses providers to manage external resources
- how to use the Docker provider
- how Terraform creates a Docker image resource
- how Terraform creates a Docker container resource
- how port mapping works between host and container
- how to use the basic Terraform workflow
- how Terraform state tracks created infrastructure
- the difference between pushing code to GitHub and actually deploying infrastructure
- how to verify a running container with Docker commands and `curl`

PHASE 2  
- how to split Terraform configuration into multiple files
- how to use `variables.tf`
- how to replace hardcoded values with variables
- how to define default variable values
- how to use `outputs.tf`
- how to display useful information after `terraform apply`
- how to make Terraform code cleaner and easier to maintain

---

## ⚠️ Challenges & Solutions

### Problem:

At first, it was not clear why the Docker container was not visible after pushing the project to GitHub.

### Solution:

I learned that `git push` only uploads the project files to GitHub.  
It does not create infrastructure.

The Docker container is created only after running:

```bash
terraform apply
```

---

### Problem:

Docker command was not available inside WSL.

### Solution:

Docker had to be installed or Docker Desktop WSL integration had to be enabled.  
After Docker was available inside WSL, Terraform could use the Docker provider to create the container.

---

### Problem:

In Phase 1, all values were hardcoded directly in `main.tf`.

### Solution:

In Phase 2, I moved configurable values into `variables.tf`.

This made the Terraform configuration cleaner and easier to update in future phases.

---

### Problem:

After deployment, I wanted to see useful information without manually checking everything.

### Solution:

I added `outputs.tf` to display the container name, image name, container ID and application URL after `terraform apply`.

---

## 📸 Screenshot

<p align="center">
  <table>
    <tr>
      <td align="center">
        <a href="images/terraform-docker-infra_phase1_plan.jpg" target="_blank">
          <img src="images/terraform-docker-infra_phase1_plan.jpg" width="400">
        </a><br/>
        <sub>Terraform plan</sub>
      </td>
      <td align="center">
        <a href="images/terraform-docker-infra_phase1_apply.jpg" target="_blank">
          <img src="images/terraform-docker-infra_phase1_apply.jpg" width="400">
        </a><br/>
        <sub>Terraform apply</sub>
      </td>
      <td align="center">
        <a href="images/terraform-docker-infra_phase1_docke.jpg" target="_blank">
          <img src="images/terraform-docker-infra_phase1_docker.jpg" width="400">
        </a><br/>
        <sub>Running Docker container</sub>
      </td>
      <td align="center">
        <a href="images/terraform-docker-infra_phase1_nginx.jpg" target="_blank">
          <img src="images/terraform-docker-infra_phase1_nginx.jpg" width="400">
        </a><br/>
        <sub>Nginx in browser</sub>
      </td>
      <td align="center">
        <a href="images/terraform-docker-infra_phase1_destroy.jpg" target="_blank">
          <img src="images/terraform-docker-infra_phase1_destroy.jpg" width="400">
        </a><br/>
        <sub>Terraform destroy</sub>
      </td>
    </tr>
  </table>
</p>

---

## 📃 Project Structure

```text
terraform-docker-infra/
├── images/
├── .gitignore
├── .terraform.lock.hcl
├── README.md
├── main.tf
├── variables.tf
└── outputs.tf
```

---

## 📌 Future Improvements

- serve a custom HTML page through Nginx
- mount local files into the Docker container
- introduce `terraform.tfvars`
- make configuration easier to customize without editing `.tf` files directly
- create reusable Terraform modules
- deploy multiple containers
- add GitHub Actions for Terraform validation
- add more project screenshots

---

## 👤 Author

Martin Tomcik  
Cloud & Infrastructure Engineer | Azure | AWS ☁️
