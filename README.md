# CI/CD Pipeline for Node.js Application using GitHub Actions and Terraform

## Overview

This repository demonstrates how to set up a Continuous Integration and Continuous Deployment (CI/CD) pipeline for a Node.js application using GitHub Actions. When code is pushed to the repository, the pipeline is triggered, creating or updating the infrastructure using Terraform. The application is then accessible via a public URL.

## Architecture

1. **GitHub Actions**: Automates the CI/CD pipeline by listening for code pushes.
2. **Terraform**: Provision infrastructure on AWS, including EC2 instances, Docker, and Nginx.
3. **Node.js Application**: A simple Node.js app running inside a Docker container, served via Nginx.

## Prerequisites

- **GitHub Account**: To host the repository and set up GitHub Actions.
- **AWS Account**: To provision infrastructure using Terraform.
- **Terraform**: Installed locally for testing and validation.
- **Docker**: Installed locally if you want to build images.

## Getting Started

Below is a flowchart illustrating the CI/CD pipeline:

```mermaid
flowchart TD
    A[Code Push] --> B[GitHub Actions Trigger]
    B --> C[Checkout Code]
    C --> D[Set up Terraform]
    D --> E[Terraform Init]
    E --> F[Terraform Plan]
    F --> G{Terraform Apply}
    G -->|Success| H[Deploy Node.js App]
    G -->|Fail| I[Notify Failure]
    H --> J[Application Accessible via URL]

