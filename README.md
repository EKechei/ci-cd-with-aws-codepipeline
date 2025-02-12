# CI/CD Pipeline with AWS CodePipeline, CodeBuild, CodeDeploy, and Docker Hub

# Overview

This project sets up a **CI/CD pipeline** to automate the deployment of an application on an EC2 instance. The pipeline fetches code from GitHub, builds it using AWS CodeBuild, pushes the Docker image to Docker Hub, and deploys it to EC2 using AWS CodeDeploy. Configuration details are stored in AWS Systems Manager Parameter Store.

# Services Used

- **AWS CodePipeline** – Automates the entire process from source to deployment.

- **AWS CodeBuild** – Builds and packages the application.

- **AWS CodeDeploy** – Deploys the application to an EC2 instance.

- **AWS EC2** – Runs the application.

- **AWS Systems Manager Parameter Store** – Stores environment variables and configuration details securely.

- **Docker Hub** – Stores and manages the Docker images.

- **GitHub** – Stores the source code.


# How It Works

1. **CodePipeline** starts when you push new code to GitHub.

2. **CodeBuild** compiles, packages the application, and builds a Docker image.

3 **CodeBuild** pushes the Docker image to Docker Hub.

4. **CodeDeploy** pulls the latest Docker image from Docker Hub and deploys it to an EC2 instance.

5 **Parameter Store** is used to manage configurations.


# Setting Up the Pipeline

## Step 1: Clone the Repository
```

```
## Step 2: Configure AWS Services 

1. **Create an IAM Role** for CodePipeline and attach the necessary permissions.

2. **Launch an EC2 Instance** and install the CodeDeploy agent and Docker.

3. **Store Configuration Variables** in AWS Systems Manager Parameter Store.

4. **Set Up CodeBuild**:
   
- Create a new CodeBuild project in AWS.

- Select GitHub as the source provider and connect to your repository.

- Choose a build environment (Amazon Linux, Ubuntu, etc.).

- Specify a buildspec.yml file for build instructions.

- Assign the appropriate IAM role for CodeBuild.

5 **Set Up Docker Hub**:

- Create a repository on Docker Hub.

- Store Docker credentials in AWS Parameter Store or AWS Secrets Manager.

6 **Set Up CodeDeploy**:

- Create a CodeDeploy Application.

- Set up a Deployment Group linked to your EC2 instance.

7 **Set Up CodePipeline**:

- Connect to GitHub as the source.

- Add CodeBuild for building the application and pushing the Docker image.

- Add CodeDeploy to pull and deploy the image from Docker Hub.


## Step 3: Deploy Your Application

Once everything is set up, push a new commit to GitHub, and the pipeline will automatically start:

```
git add .
git commit -m "New deployment"
git push origin main

```



















