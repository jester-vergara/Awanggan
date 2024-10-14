# Project Awanggan: Complete AWS Infrastructure from Scratch

**Description**:
Awanggan is a comprehensive project designed to build a fully functional AWS infrastructure from scratch, incorporating the best practices for cloud architecture, cost optimization, security, monitoring, and scaling. The project is built with a focus on automation using **Terraform** for Infrastructure as Code (IaC), **GitLab CI/CD** for continuous deployment, and **AWS Vault** for secure management of AWS credentials.

The goal of Project Awanggan is to create a reusable, scalable, and cost-effective infrastructure that follows AWS Well-Architected Framework principles, making it ideal for both startups and large-scale cloud environments.

## Documentation

- [Initial Requirements](./docs/requirements.md)
- [Key Considerations](./docs/considerations.md)
- [Architecture Overview](./docs/architecture.md)
- [Setup Guide](./docs/setup.md)

## Key Technologies
- **Terraform**: Infrastructure as Code (IaC) tool for provisioning AWS resources.
- **GitLab CI/CD**: Used for managing pipelines for infrastructure automation.
- **AWS Control Tower**: Chosen for managing multi-account AWS environments over AWS Landing Zone.
- **ArgoCD**: For GitOps methodology, managing Kubernetes resources and automating sync with Git repositories.
- **AWS Vault**: Securely managing AWS credentials in development environments.

## Getting Started
For more details on how to set up the infrastructure, refer to the [Setup Guide](./docs/setup.md).

