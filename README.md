# Automated Infrastructure Provisioning with Terraform

## Project Overview
This repository contains the declarative **Infrastructure as Code (IaC)** configurations designed to provision and manage a secure, scalable, and highly available cloud environment for a multi-tier Python (Todo List) application. The primary objective of this project is to demonstrate modern DevOps deployment workflows, emphasizing predictable environment replication and strict adherence to cloud engineering best practices.

## Key Features & Architecture
* **Modular Configuration:** Written utilizing reusable, modular Terraform structures to cleanly separate environment logic and optimize maintainability.
* **State & Variable Management:** Robust handle of environment-specific variables and state configurations to ensure deployment consistency.
* **Network & Security Orchestration:** Declarative configuration of Virtual Networks, Subnets, and Security Groups to strictly enforce the principle of least privilege.
* **Deterministic Deployment:** Designed to completely eliminate configuration drift and allow for repeatable, automated infrastructure lifecycles.

## Technologies Used
* **Infrastructure as Code:** Terraform
* **Cloud Infrastructure Provider:** AWS / Microsoft Azure
* **Version Control:** Git
* **Target Application Stack:** Python (Flask/Django), WSGI Server, Database Engine

---

## Getting Started

### Prerequisites
Before deploying the infrastructure, ensure you have the following tools installed and configured on your local workstation:
1. **Terraform CLI** (v1.0.0 or higher)
2. **Cloud Provider CLI** (Authenticated with appropriate IAM permissions)
3. **Git**

### Deployment Steps

Follow these step-by-step commands to initialize and apply the infrastructure configuration:

1. **Clone the Repository:**
   ```bash
   git clone [https://github.com/kkatkot/devops_todolist_terraform_task.git](https://github.com/kkatkot/devops_todolist_terraform_task.git)
   cd devops_todolist_terraform_task

2. **Initialize the Working Directory:**
Downloads the required cloud provider plugins and initializes the backend configuration.
   ```bash
   terraform init

3. **Generate an Execution Plan:**
Creates an execution plan, allowing you to preview the cloud resources that will be created or modified.
   ```bash
   terraform plan

4. **Apply the Configuration:**
Provision the infrastructure on the designated cloud platform.
   ```bash
   terraform apply
