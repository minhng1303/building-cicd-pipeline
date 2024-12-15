# Udacity Cloud DevOps using Microsoft Azure Nanodegree Program - Project: Building a CI/CD Pipeline

[![Python application test with Github Actions](https://github.com/thom/azure-ci-cd-pipeline/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/thom/azure-ci-cd-pipeline/actions/workflows/pythonapp.yml)

## Project Overview
This project builds a continuous integration and continuous delivery pipeline for a machine learning application implemented with scikit-learn and Flask. The application provides Boston house price predictions.

Continuous integration is implemented using GitHub Actions along with a Makefile, requirements.txt, and application code to perform an initial lint, test, and install cycle. The project builds an integration with Azure Pipelines to enable Continuous Delivery to Azure App Service.

---

## Features
- Continuous Integration with GitHub Actions
- Continuous Delivery using Azure Pipelines
- Scikit-learn-based machine learning model for price prediction
- Deployment to Azure App Services

---

## Project Plan
- Spreadsheet with the estimated project plan: [Project Management Spreadsheet](https://github.com/thom/azure-ci-cd-pipeline/blob/main/project-management.xlsx)
- Trello board for task tracking: [Azure CI/CD Pipeline Board](https://trello.com/b/cvzyhixM/azure-ci-cd-pipeline)

---

## Getting Started

### Prerequisites
To set up and run this project, you need the following:
- Python 3.x
- Azure Account
- GitHub Account

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/thom/azure-ci-cd-pipeline.git
   ```
2. Navigate to the project directory:
   ```bash
   cd azure-ci-cd-pipeline
   ```
3. Create a virtual Python environment and activate it:
   ```bash
   make setup
   source ~/.udacity-devops/bin/activate
   ```
4. Install dependencies:
   ```bash
   make install
   ```

### Running the Project
1. Run the application locally:
   ```bash
   FLASK_APP=app.py flask run
   ```
2. Open your browser and navigate to:
   ```
   http://localhost:5000
   ```
3. Test predictions:
   ```bash
   ./make_prediction.sh
   ```

---

## Deployment

### Deploy to Azure App Services
Run the following command to deploy the application to Azure App Services:
```bash
az webapp up \
    --resource-group flask-ml-service-rg \
    --name flask-ml-service-ikhono \
    --sku F1 \
    --location eastus \
    --verbose
```
Visit the deployed application URL to verify deployment.

---

## CI/CD Pipeline

### GitHub Actions
GitHub Actions automates linting, testing, and building:
- Actions include:
  - `make install`
  - `make lint`
  - `make test`

### Azure Pipelines
Azure Pipelines deploy the application to Azure App Services. Follow these steps:
1. Create a project in [Azure DevOps](https://dev.azure.com/).
2. Set up a service connection for Azure Resource Manager.
3. Create a pipeline and connect it to the GitHub repository.
4. Deploy using variables for resource group and application name.

---

## Load Testing
Use Locust for load testing:
1. Install Locust:
   ```bash
   pip install locust
   ```
2. Start Locust:
   ```bash
   locust
   ```
3. Open [http://localhost:8089](http://localhost:8089) to configure and start the test.

---

## Clean-Up
To clean up resources, delete the Azure resource group:
```bash
az group delete -n flask-ml-service-rg
```

---

## Enhancements
Potential improvements:
- Use Git branches for staging environments
- Deploy infrastructure using Terraform
- Consolidate CI/CD workflows into a single tool

---

## Demo
View a video demonstration of the project: [Project Demo](https://www.youtube.com/watch?v=V91qf4VZ9vk)

---

## References
- [Build CI workflows with GitHub Actions](https://docs.microsoft.com/en-us/learn/modules/github-actions-ci)
- [Deploy a Python app to Azure App Service](https://docs.microsoft.com/en-us/azure/app-service/quickstart-python)
- [Create a CI/CD pipeline in Azure DevOps](https://docs.microsoft.com/en-us/azure/devops-pipelines/ecosystems/python-webapp)

---

## License
This project is licensed under the [MIT License](http://opensource.org/licenses/mit-license.php).

---

## Contact
For inquiries, contact Thomas Weibel at [https://github.com/thom](https://github.com/thom).
