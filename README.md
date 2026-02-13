# 🛠 Terraform Multi-Environment AWS Infrastructure

This repository contains a **Terraform-based Infrastructure as Code (IaC)** project that provisions AWS resources across **Development, Staging, and Production** environments using reusable modules and environment-specific configurations.

---

## 🚀 Project Overview

This project demonstrates how to build, manage, and tear down AWS infrastructure using **Terraform (HCL)** with:

✔ Modular Terraform code  
✔ Environment-specific resource configurations  
✔ Reusable modules for EC2 provisioning  
✔ Automated lifecycle management with Terraform CLI

It includes common AWS components like EC2, Security Groups, S3, DynamoDB, and environment-level scaling.

---

## 🏗 Architecture

The infrastructure is organized into **three environments**:

| Environment | Instance Type | Count |
|-------------|----------------|-------|
| Development | t2.micro       | 1     |
| Staging     | t2.medium      | 1     |
| Production  | t2.large       | 3     |

All environments leverage the **same reusable EC2 module** with different variable values.

You can view the overall architecture in the `architecture.png` image included in this repository.

---

## 📂 Repository Structure

Terraform-Multi-Environment-AWS-Infrastructure/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── architecture.png
└── aws_modules/
├── my_instance.tf
├── my_variables.tf
├── outputs.tf



- **main.tf** → Root environment definitions  
- **variables.tf** → Input variable declarations  
- **terraform.tfvars** → Environment-specific inputs  
- **outputs.tf** → Output definitions  
- **aws_modules/** → Reusable module for EC2 provisioning  
- **architecture.png** → Visual diagram of architecture

---

## 🧰 Tech Stack

| Technology | Purpose |
|------------|---------|
| Terraform  | Infrastructure as Code |
| AWS        | Cloud Provider |
| HCL        | Configuration Language |
| AWS CLI    | AWS credential & configuration |

---

## ⚙️ Prerequisites

Before running the Terraform scripts, you should:

1. **Install Terraform**
   ```bash
   terraform --version
2. **Install AWS CLI**
   ```bash
   aws --version
3. **Configure AWS Credentials**
   ```bash
   aws configure

📌 How to Deploy
Use the following sequence of Terraform commands:

1️⃣ Initialize Terraform

    terraform init
2️⃣ Review the Execution Plan
    
    terraform plan
3️⃣ Apply the Terraform Configuration

    terraform apply
4️⃣ View Output Values
    
    terraform output
5️⃣ Destroy the Infrastructure
    
    terraform destroy

📤 Important Outputs
After successful deployment, the outputs will display the details of created resources such as:

✔ Public IP of EC2 instances
✔ Resource IDs
✔ Other environment-specific outputs

You can view them with:

    terraform output

🔒 State Management
Terraform stores its current state in a local file (terraform.tfstate). For team collaboration, consider using remote state storage in an S3 bucket with DynamoDB state locking.

💡 Key Learnings

During this project, you will explore:

Provisioning AWS infrastructure using Terraform modules

Managing environments with variable overrides

EC2, Security Group, and IAM integration

Terraform workflow commands and state management

Clean infrastructure organization using reusable modules


📌 Author

Saif Anas
DevOps Engineer | AWS & Terraform Practitioner

If you have any questions or suggestions, feel free to open an issue or connect with me!




