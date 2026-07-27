# Azure Landing Zone DevSecOps 

A Terraform-based Azure Landing Zone implementation focused on building secure, scalable, and repeatable cloud infrastructure using Infrastructure as Code (IaC) and DevSecOps practices.

This project demonstrates how Azure infrastructure can be provisioned, validated, secured, and cost-estimated using modern DevOps tools and automation practices.

---

##  Project Overview

Managing cloud infrastructure manually becomes difficult as environments grow. This project focuses on automating Azure infrastructure deployment using Terraform while integrating security and quality checks into the workflow.

The goal of this project is to create a production-inspired Azure foundation that follows DevOps and DevSecOps best practices.

Key areas covered:

- Infrastructure provisioning using Terraform
- Modular Terraform architecture
- Azure networking and compute resources
- Infrastructure security scanning
- Secret detection
- Terraform code quality validation
- Cloud cost estimation

---

#  Architecture Overview

The project provisions Azure resources using Terraform modules.

High-level workflow:

```
Developer
    |
    |
Terraform Code
    |
    |
Terraform Plan
    |
    |
Security & Quality Checks
    |
    |------ tfsec
    |------ Checkov
    |------ TFLint
    |------ Gitleaks
    |
    |
Terraform Apply
    |
    |
Azure Infrastructure
```

---

#  Technologies Used

## Cloud Platform
- Microsoft Azure

## Infrastructure as Code
- Terraform

## Security Tools
- tfsec
- Checkov
- Gitleaks

## Code Quality
- TFLint

## Cost Management
- Infracost

## Version Control
- Git & GitHub

---

#  Repository Structure

```
azure-landing-zone-devsecops
│
├── modules/
│   ├── network/
│   ├── virtual-machine/
│   ├── storage/
│   └── security/
│
├── environments/
│   └── dev/
│
├── security-reports/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars.example
│
├── .gitignore
└── README.md
```

---

#  Features Implemented

## 1. Infrastructure as Code using Terraform

- Automated Azure resource provisioning
- Reusable Terraform modules
- Variable-driven configuration
- Infrastructure consistency across environments

---

## 2. Azure Landing Zone Foundation

The project includes foundational Azure components:

- Resource Groups
- Virtual Networks
- Subnets
- Network Security Groups
- Virtual Machines
- Storage Resources

---

## 3. DevSecOps Security Integration

Security checks are integrated into the infrastructure workflow.

### tfsec

Used for identifying security issues in Terraform configurations.

Example checks:

- Open network access
- Insecure configurations
- Azure security best practices


### Checkov

Used for policy-based infrastructure scanning.

Validates:

- Cloud security policies
- Compliance requirements
- Terraform best practices


### Gitleaks

Used to detect accidentally committed secrets.

Scans for:

- API keys
- Passwords
- Tokens
- Sensitive information


---

## 4. Terraform Code Quality

### TFLint

Used for Terraform linting and detecting:

- Invalid configurations
- Provider-specific issues
- Best practice violations

---

## 5. Infrastructure Cost Estimation

### Infracost

Provides cost visibility before deployment.

Helps estimate:

- Azure resource pricing
- Monthly infrastructure cost
- Cost impact of changes

---

#  How to Run This Project

## Prerequisites

Install the following tools:

- Azure CLI
- Terraform
- tfsec
- Checkov
- TFLint
- Gitleaks
- Infracost


---

## Step 1: Clone Repository

```bash
git clone https://github.com/AbhayShukla1907/azure-landing-zone-devsecops.git

cd azure-landing-zone-devsecops
```

---

## Step 2: Login to Azure

```bash
az login
```

Verify subscription:

```bash
az account show
```

---

## Step 3: Initialize Terraform

```bash
terraform init
```

---

## Step 4: Validate Configuration

```bash
terraform validate
```

---

## Step 5: Run Security Checks

### Terraform Security Scan

```bash
tfsec .
```

### Checkov Scan

```bash
checkov -d .
```

### Terraform Linting

```bash
tflint
```

### Secret Detection

```bash
gitleaks detect --source .
```

---

## Step 6: Terraform Deployment

Create execution plan:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

---

#  Security Practices Followed

- Secrets are excluded using `.gitignore`
- Terraform state files are not committed
- Infrastructure is scanned before deployment
- Security validation is performed before provisioning
- Least privilege approach considered during resource design

---

#  DevSecOps Workflow

```
Code Commit
     |
     |
Terraform Validation
     |
     |
Security Scanning
     |
     |
Cost Analysis
     |
     |
Terraform Plan Review
     |
     |
Infrastructure Deployment
```

---

#  Learning Outcomes

Through this project, I gained practical experience with:

- Azure Infrastructure Automation
- Terraform Modules
- Cloud Networking
- DevSecOps Implementation
- Infrastructure Security
- Cloud Cost Optimization
- IaC Best Practices

---

#  Future Improvements

Some planned enhancements:

- Add GitHub Actions CI/CD pipeline
- Implement Terraform remote backend with Azure Storage
- Add Azure Policy integration
- Add Monitoring using Azure Monitor and Log Analytics
- Implement automated security gates

---

#  Author

**Abhay Kumar Shukla**

DevOps Engineer | Cloud & Infrastructure Automation Enthusiast

GitHub:
https://github.com/AbhayShukla1907

---

⭐ If you find this project useful, feel free to explore or provide feedback.
