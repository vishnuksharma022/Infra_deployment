# tf-todoapp-infra

This repository contains the Terraform configuration for provisioning the infrastructure required for the Todo App. The infrastructure includes resources such as Azure Container Registry (ACR), Azure Kubernetes Service (AKS), Azure SQL Database (SQLDB), and Resource Group in Azure. The configurations are organized into reusable modules to help streamline deployment and management.

## Table of Contents
1. [Overview](#overview)
2. [Modules Used](#modules-used)
3. [Prerequisites](#prerequisites)
4. [Usage](#usage)
5. [Outputs](#outputs)
6. [Contributing](#contributing)
7. [License](#license)

## Overview

This project uses **Terraform** to define, deploy, and manage Azure resources needed to run the Todo App. The infrastructure setup is modularized for easy maintenance and scalability. The following resources are provisioned as part of the infrastructure setup:

- **Resource Group**: A container that holds related Azure resources.
- **Azure Container Registry (ACR)**: A private registry to store Docker container images for the Todo App.
- **Azure Kubernetes Service (AKS)**: Managed Kubernetes clusters for deploying and managing the Todo App containers.
- **Azure SQL Database**: A managed relational database to store Todo App data.

The Terraform modules are designed to be reusable and can be customized for different environments, such as development, staging, and production.

## Modules Used

The following Terraform modules are used in this repository:

### 1. **Resource Group**
- **Module Path**: `modules/resource_group`
- **Description**: This module creates a new Azure Resource Group where all the resources will be provisioned.

### 2. **Azure Container Registry (ACR)**
- **Module Path**: `modules/acr`
- **Description**: This module creates an Azure Container Registry (ACR) to store Docker images for the Todo App. ACR allows for seamless deployment to AKS.

### 3. **Azure Kubernetes Service (AKS)**
- **Module Path**: `modules/aks`
- **Description**: This module provisions an Azure Kubernetes Service (AKS) cluster to run the Todo App containers.

### 4. **Azure SQL Database (SQLDB)**
- **Module Path**: `modules/sqldb`
- **Description**: This module sets up an Azure SQL Database to store and manage the Todo App's data.

## Prerequisites

Before using the Terraform configuration in this repository, make sure you have the following installed and configured:

- **Terraform**: Version 1.x or later.
- **Azure CLI**: Make sure the Azure CLI is installed and authenticated. You can log in to your Azure account with:
  ```bash
  az login
  ```

## Usage

To deploy the infrastructure, run the following commands:

1. **Plan**: Generate and review an execution plan:
   ```bash
   terraform plan
   ```

2. **Apply**: Apply the configuration to create the infrastructure:
   ```bash
   terraform apply
   ```

   Confirm the action by typing `yes` when prompted.

3. **Destroy**: If you want to tear down the infrastructure, run:
   ```bash
   terraform destroy
   ```
