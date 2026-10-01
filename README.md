# terraform-landing-zone

Enterprise Azure Landing Zone implementation using Terraform modules, Hub-Spoke networking, governance, RBAC, policies, security, and environment isolation.

Updated: 2026-09-30

## Overview

This repository provides a foundation for deploying an Azure landing zone using Terraform. It is structured to support a secure, governed enterprise environment with a hub-and-spoke network model, centralized controls, and consistent Azure resource provisioning.

The current implementation includes:

- Azure Resource Group provisioned in East US
- Terraform AzureRM provider configuration
- Azure DevOps pipeline validation for formatting, validation, and security scanning
- Base infrastructure that can be extended with additional landing zone modules and policy controls

## Repository Structure

```text
.
├── README.md
├── main.tf
├── provider.tf
├── azure-pipelines.yml
├── LICENSE
└── .gitignore
```

## Current Terraform Configuration

### Provider and version requirements

The Terraform configuration currently requires:

- Terraform version: >= 1.5.0
- AzureRM provider: ~> 4.0

The provider is configured with the Azure subscription ID:

- 933094f8-3653-44a5-b6f6-04a0992bcf41

### Resource configuration

The base deployment currently creates:

- Resource Group: `satish-rg`
- Location: `East US`

## Prerequisites

Before deploying, ensure the following are in place:

- Azure subscription access
- Terraform installed locally
- Azure CLI installed and authenticated
- Appropriate permissions to create resource groups and Azure resources

## Quick Start

1. Clone the repository:

```bash
git clone https://github.com/satishshukla19/terraform-landing-zone.git
cd terraform-landing-zone
```

2. Initialize Terraform:

```bash
terraform init
```

3. Review the execution plan:

```bash
terraform plan
```

4. Apply the configuration:

```bash
terraform apply
```

## Azure DevOps Pipeline

The repository includes an Azure Pipelines configuration (`azure-pipelines.yml`) that runs:

- Terraform format check
- Terraform validation
- tfsec security scan

This helps ensure that infrastructure changes are validated before deployment.

## Security and Governance

This landing zone is intended to support enterprise standards such as:

- Resource isolation by environment
- Centralized governance and RBAC
- Policy enforcement
- Network segmentation via hub-and-spoke design
- Security scanning during CI/CD validation

## Notes

This repo is a starting point for an Azure landing zone implementation and can be expanded with additional Terraform modules for networking, identity, monitoring, policy, and management services.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
