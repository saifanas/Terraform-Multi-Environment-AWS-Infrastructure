🚀 Terraform Multi-Environment AWS Infrastructure

This project demonstrates how to provision and manage multi-environment AWS infrastructure (Dev, Staging, Production) using Terraform (Infrastructure as Code) with a modular architecture.

The infrastructure is fully reproducible and environment-driven using reusable Terraform modules.

📌 Project Overview

Using Terraform and AWS, this project provisions:

EC2 Instances (environment-based scaling)

Security Groups

Default VPC integration

S3 Buckets

DynamoDB Tables

Environment-specific configurations (Dev, Staging, Production)

The entire infrastructure lifecycle is managed through Terraform CLI commands.

🏗 Architecture

The infrastructure is divided into three environments:

🔹 Dev

1 EC2 instance (t2.micro)

Basic configuration for testing

🔹 Staging

1 EC2 instance (t2.medium)

Pre-production validation setup

🔹 Production

3 EC2 instances (scalable setup)

Production-level environment configuration

All environments are deployed using reusable Terraform modules with different variable inputs.

📂 Project Structure
.
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── aws_modules/
    ├── my_instance.tf
    ├── my_variables.tf
    └── outputs.tf


Root module handles environment configuration

Child module handles reusable EC2 provisioning logic

⚙️ Technologies Used

Terraform

AWS (EC2, S3, DynamoDB, VPC, Security Groups)

HashiCorp Configuration Language (HCL)

AWS CLI

🔧 Prerequisites

Before running this project, ensure:

Terraform installed (terraform --version)

AWS CLI configured (aws configure)

AWS account with required IAM permissions

🚀 How to Deploy
1️⃣ Initialize Terraform
terraform init

2️⃣ Review Execution Plan
terraform plan

3️⃣ Apply Infrastructure
terraform apply

4️⃣ Destroy Infrastructure
terraform destroy


⚠️ Always review the execution plan before applying or destroying resources.

📤 Outputs

The project outputs useful information such as:

EC2 public IP addresses

Resource identifiers

Environment-based resource details

You can view outputs using:

terraform output

📦 State Management

Terraform uses a state file (terraform.tfstate) to track infrastructure.

For production use, it is recommended to:

Store state remotely (e.g., S3 backend)

Enable state locking (DynamoDB)

💡 Key Learning Outcomes

Understanding Terraform modules and reusability

Multi-environment infrastructure design

Resource referencing and variable management

AWS networking basics (VPC, Security Groups)

Infrastructure lifecycle management

State management concepts

🧠 Lessons Learned

Infrastructure as Code enables:

Reproducibility

Automation

Version control

Rapid recreation of infrastructure

Even if resources are destroyed accidentally, they can be fully rebuilt using code.

📌 Future Improvements

Remote backend (S3 + DynamoDB for state locking)

Auto Scaling Groups for production

Load Balancer integration

CI/CD pipeline integration

Separate VPC module

👨‍💻 Author

Saif Anas
DevOps Engineer | AWS | Terraform | CI/CD | Cloud Enthusiast
