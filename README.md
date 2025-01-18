# DevOps Demo Project

This project demonstrates a comprehensive DevOps pipeline for a simple Express.js application, showcasing various DevOps practices and tools.


This project includes:

- A simple Express.js application with error handling and logging
- Containerization using Docker
- Kubernetes deployment manifests
- CI/CD pipeline using GitHub Actions
- Infrastructure as Code using Terraform
- Monitoring setup with Prometheus
- Secret management with HashiCorp Vault (TODO)

## Architecture


The application is containerized and deployed to a Kubernetes cluster on AWS EKS. The CI/CD pipeline automates building, testing, and deployment processes.

## Getting Started

### Prerequisites

- Node.js 14+
- Docker
- kubectl
- AWS CLI
- Terraform
- Helm

## Important Notice

This project does not include sensitive credentials such as kube_config, AWS credentials, or any other secret keys. This decision has been made to ensure:

Security: To prevent unauthorized access to sensitive resources.

Cost Management: To avoid incurring any unintended charges on my account due to the use of shared credentials.

Required Actions

To execute this project, please ensure that you utilize your own credentials. Follow the steps below:

Kubernetes Configuration: Ensure that your Kubernetes configuration file (kube_config) is properly set up and accessible.

AWS Credentials: Configure your AWS credentials using the AWS CLI or appropriate environment variables. For example:

export AWS_ACCESS_KEY_ID=your_access_key

export AWS_SECRET_ACCESS_KEY=your_secret_key

It's a good practice to use role-based access control (RBAC) in Kubernetes to manage permissions effectively.

Other Credentials: Replace any placeholders within the code with your own credential values.

Rationale

Utilizing your own credentials:

Allows you to manage and monitor your resources independently.

Protects me from potential financial or security consequences resulting from misuse of shared credentials.

Thank you for your understanding. Should you have any questions, please do not hesitate to reach out. Happy coding!


