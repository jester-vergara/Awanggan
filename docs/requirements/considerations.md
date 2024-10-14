# Key Considerations for Project Awanggan

## Security
- Ensure IAM roles follow the principle of least privilege.
- Regularly review and audit AWS CloudTrail logs.
- Enable multi-factor authentication (MFA) for users accessing AWS Management Console.

## Cost
- Implement cost alerts using AWS Budgets.
- Use Auto Scaling to scale EC2 instances based on traffic.
- Utilize Reserved Instances for long-term savings on compute resources.

## Monitoring & Logging
- Set up CloudWatch alarms for key infrastructure metrics.
- Integrate centralized logging (Graylog) for application and system logs.

## High Availability
- Ensure that the infrastructure is deployed across multiple Availability Zones (AZs).
- Use Auto Scaling and Elastic Load Balancing (ELB) for fault tolerance.

## Scalability
- Design the VPC and subnets to accommodate future growth.
- Use modular Terraform code to easily add new resources or projects.

## AWS Control Tower vs AWS Landing Zone

### Why We Chose AWS Control Tower:
For this project, we opted to use **AWS Control Tower** over AWS Landing Zone for the following reasons:

- **Simplicity**: AWS Control Tower provides a **pre-configured environment** for managing multi-account AWS environments, making it easier to set up and maintain. It comes with built-in automation to establish a secure and compliant AWS environment with **guardrails**, eliminating the need to configure everything from scratch.
  
- **Time Efficiency**: AWS Control Tower significantly reduces the time and complexity of setting up multi-account governance, allowing us to focus on building infrastructure rather than managing multiple configurations and policies manually as we would in Landing Zone.

- **Automated Guardrails**: Control Tower comes with pre-configured **mandatory and optional guardrails**, which provide strong governance and enforce compliance with best practices. These guardrails are based on AWS's best practices and automatically get updated, ensuring that our environment remains compliant over time.

- **Ongoing Governance**: AWS Control Tower not only sets up the environment but also continuously governs it. If an account deviates from the established policies or guardrails, Control Tower will detect and notify, allowing us to take corrective actions.

- **Managed Service**: Control Tower is a **fully managed service**, which means AWS handles the maintenance, updates, and scaling. AWS Landing Zone, on the other hand, is a **set of custom scripts** that require more hands-on management and updating, which would increase our operational overhead.

- **Future-Proofing**: AWS Control Tower continues to evolve, with AWS actively improving and updating the service to introduce new features, security updates, and more. Landing Zone, being a set of AWS solutions and not a managed service, would require ongoing maintenance by us to keep it updated with AWS best practices.

### Trade-offs:
- **Customization**: AWS Control Tower is less customizable than AWS Landing Zone, which allows for more flexibility in configurations. However, the trade-off is justified since we prioritize governance, security, and ease of use over deep customizations at this stage.
  
- **Initial Cost**: While both solutions are cost-effective for governance, Control Tower's simplicity and managed features could come at a slightly higher cost in large-scale environments compared to a fully customized Landing Zone. However, the saved time and reduced manual effort outweigh this for the current project.

By using AWS Control Tower, we aim to accelerate our infrastructure setup while ensuring it remains secure, compliant, and scalable for future needs.

---

## Why We Chose GitLab for CI/CD

### **GitLab CI/CD as the Core CI Tool**:
We selected **GitLab CI/CD** as the primary tool for managing continuous integration and continuous deployment (CI/CD) pipelines due to its powerful features and ease of use.

1. **Integrated CI/CD**: GitLab offers built-in CI/CD pipelines, reducing the need to integrate third-party tools for setting up automation pipelines. This makes it a one-stop solution for code versioning, pipeline management, and deployment.

2. **Self-Hosted GitLab CE**: To keep infrastructure costs lower and avoid limits associated with the GitLab hosted service, we are using **GitLab CE (Community Edition)** on our own EC2 instance. This gives us full control over the runners, pipelines, and configurations without paying for higher-tier services.

3. **Scalability with GitLab Runners**:
   - We chose to run **GitLab Runners** on **EC2 instances** (or potentially **ECS** for scaling) to ensure that jobs can be executed efficiently and resources can be scaled based on demand.
   - **Spot Instances** may be used to reduce costs, especially for non-production environments, where execution time is less critical.

4. **Flexibility**: GitLab CI/CD provides the flexibility to manage complex pipelines with multi-step jobs and artifacts. This is essential for the various environments we need to support (dev, staging, prod), allowing seamless deployment of AWS infrastructure using Terraform.

5. **Security**: GitLab supports secrets management directly within the CI/CD pipelines, ensuring that sensitive environment variables (like AWS credentials) are securely handled.

---

## GitOps with ArgoCD

### **GitOps Approach**:
For infrastructure management and application deployment, we plan to adopt the **GitOps** methodology using **ArgoCD**. GitOps allows us to manage both infrastructure and application state declaratively in Git, ensuring a single source of truth and easy rollback.

### Why GitOps with ArgoCD:
1. **Declarative Infrastructure**: By using Git as the source of truth for all configurations, we ensure consistency between the desired state (as defined in Git) and the actual state in AWS.

2. **Automated Sync**: **ArgoCD** continuously monitors Git repositories and ensures the deployed state matches the configurations stored in Git. If a mismatch occurs, ArgoCD will automatically update the infrastructure to match the repository.

3. **Rollback Capability**: With GitOps, rolling back to a previous state is as simple as reverting a Git commit. This greatly simplifies recovery from failures.

4. **EKS Integration**: **ArgoCD** will run on **Amazon EKS** to manage Kubernetes resources, including our application deployments. It integrates natively with Kubernetes, allowing us to deploy and monitor applications running in containers.

5. **Multi-Environment Support**: ArgoCD makes it easy to manage different environments (dev, staging, prod) by allowing environment-specific Git branches or folders, ensuring clear separation and easy promotion from one environment to another.

### Terraform + ArgoCD:
- **Terraform**: Terraform will continue to be used for provisioning the core AWS infrastructure (like VPCs, EC2, RDS, IAM roles).
- **ArgoCD**: ArgoCD will be responsible for Kubernetes application deployments and ensuring the infrastructure matches the desired state as defined in Git.
- Both tools will complement each other, ensuring the infrastructure layer (via Terraform) and application layer (via ArgoCD) are managed declaratively and automatically.

---

## Future-Proofing and Tool Integration

### Terraform for Infrastructure as Code (IaC)
- **Why Terraform**: Terraform’s ability to manage infrastructure as code (IaC) across multiple cloud providers makes it a core part of our infrastructure provisioning. Its modular approach allows us to reuse code across different environments and projects.
- **Terraform and GitOps**: While Terraform will continue to be the go-to tool for provisioning AWS resources, ArgoCD will manage application state through GitOps.

### AWS Vault for Credential Management
- **Why AWS Vault**: AWS Vault is essential for secure access to AWS credentials in development environments. By using short-lived credentials, it reduces the risk of long-lived access keys being compromised.

---

## Conclusion

Project Awanggan aims to build a scalable, secure, and cost-effective AWS infrastructure using a combination of industry best practices and modern tools like Terraform, GitLab CI/CD, and ArgoCD for GitOps. By focusing on automation, security, and monitoring, we ensure the infrastructure is future-proof and able to grow with new projects and requirements.
