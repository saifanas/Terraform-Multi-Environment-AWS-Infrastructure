🚀 Terraform Multi-Environment AWS Infrastructure
A modular Infrastructure as Code (IaC) project built using Terraform to provision and manage AWS resources across Development, Staging, and Production environments.
This project demonstrates reusable Terraform modules, environment-based configurations, and full infrastructure lifecycle management.

📌 Overview
This project provisions and manages AWS infrastructure using Terraform with:

✅ EC2 Instances (environment-specific scaling)

✅ Security Groups

✅ Default VPC integration

✅ S3 Buckets

✅ DynamoDB Tables

✅ Modular and reusable Terraform architecture

The infrastructure can be created, modified, and destroyed entirely using Terraform CLI commands.

🏗 Architecture Design
The infrastructure is divided into three isolated environments:

🔹 Development (Dev)

1 EC2 Instance (t2.micro)

Lightweight configuration for testing and experimentation

🔹 Staging

1 EC2 Instance (t2.medium)

Pre-production validation environment

🔹 Production (Prod)

3 EC2 Instances (scalable configuration)

Production-grade environment setup

Each environment reuses the same Terraform module with different variable inputs.

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
Root Module → Handles environment configuration
Child Module → Reusable EC2 provisioning logic

🛠 Tech Stack
Terraform
AWS (EC2, S3, DynamoDB, VPC, Security Groups)
HashiCorp Configuration Language (HCL)
AWS CLI

⚙️ Prerequisites
Before running this project, ensure:
Terraform installedterraform --version

AWS CLI configured
aws configure

AWS account with required IAM permissions

🚀 Deployment Steps
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
To view provisioned resource details:
terraform output

Example outputs:
EC2 Public IP Addresses
Resource IDs
Environment-specific values

📦 State Management
Terraform maintains a terraform.tfstate file to track infrastructure resources.

Recommended Improvement:
Store state remotely in S3
Enable state locking using DynamoDB

This prevents state corruption and supports team collaboration.

💡 Key Concepts Implemented
Terraform Modules for reusability
Environment-based configuration (Dev, Staging, Prod)
Variable-driven infrastructure
Resource referencing best practices
Infrastructure lifecycle management
Targeted resource operations (-target flag)

🧠 Learning Outcome
This project strengthened my understanding of:
Infrastructure as Code principles
Terraform module isolation and variable passing
AWS networking basics
State management
Multi-environment infrastructure design
Infrastructure can be recreated instantly using code — demonstrating the true power of IaC.

🔮 Future Enhancements
Remote backend (S3 + DynamoDB locking)
Load Balancer integration
Auto Scaling Groups
CI/CD integration
Custom VPC module implementation

👨‍💻 Author

Saif Anas
DevOps Engineer | AWS | Terraform | CI/CD | Cloud Enthusiast
