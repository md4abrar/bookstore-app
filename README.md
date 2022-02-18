# This web application demonstrates the use of Jenkins CICD pipeline to deploy webapps to EKS cluster.

# Pre requisites:
1. Jenkins setup
2. Jenkins user should have access to docker. [ May be by adding jenkins user to the docker group ]
3. aws cli and kubectl installed on jenkins node

# Tools Used

1. Integration - Jenkins
2. Secrets - Jenkins secrets
3. Build - Maven
4. Packaging - Docker
5. Registry - Docker Hub
6. Compute - EKS cluster
