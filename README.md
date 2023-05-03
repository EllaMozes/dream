# dream

This project creating a Terraform script that deploys an EC2 instance on AWS.
The script will be executed for every "merge" request.

## Project Goals

Automate the deployment process of a Flask service on an EC2 instance using Terraform and Docker.

## Getting Started

To get started with the project, follow these steps:

1. Edit the Terraform script to include any required changes or customizations, such as adjusting the instance size AWS credentials and other relevant information.
2. Set up the necessary environment variables and credentials to authenticate with AWS and the DockerHub
3. Configure the GitHub Action workflow to include the necessary variables and settings, such as the AWS region, the Docker image name, and the instance type.

### Prerequisites

1. configure AWS IAM user and add access and secret key. Create secrets in the repository setting with the following variabls names: AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY.
2. Configure Token in DockerHub and copy your username. Create secrets in the repository setting with the following variabls names: DOCKER_USERNAME, DOCKER_PASSWORD.
3. Make sure that the AWS user has the right permissions. 

### Technologies Used
Terraform
AWS EC2
Flask
Docker
Docker Hub
GitHub Actions
