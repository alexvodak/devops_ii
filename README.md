# devops_ii

Repository created for commiting tasks 

## 00 - Introduction. DevOps

Folder includes bash script , that shows OS versions , all users on the OS with bash shell installed and shows the open ports.

## 01 - FRONT-END & BACK-END Architecture, RestAPI and deploy -  Assignment Web Scripting

Folder includes scripts with installing node modules.
Initial script removes nvm packages and yarn lock file, which include the exact dependency versions for the  project together with checksums for each package. 
This reduces time of the build

## 03 - Docker

Created Docker container with Nginx and custom home page (see index.html)

## 04 - Docker compose


### 04 - 01 Python Client/Server

Includes docker compose and small Python scripts

### 04 - 02 MS SQL Server and ASP NET Core API

Located in different repository. Includes compose of MS SQL Server with API consuming data from it.
App is extended with EF Core migration with seeded data

## 05 - Azure

sudo ufw allow 80/tcp comment 'accept HTTP connections'
sudo ufw allow 443/tcp comment 'accept HTTPS connections'
sudo mysql -e 'CREATE DATABASE 'bloodbank' DEFAULT CHARACTER SET utf8'
sudo mysql bloodbank
source /home/vm1-admin/sources/Blood-Bank-Management-System/sql/bloodbank.sql
sudo cp -r /home/vm1-admin/sources/Blood-Bank-Management-System/* .

## 06 - Terraform

Includes 3 tasks completed in 1 build
Actual variables data is removed for security reasons

## 07 - Hosting

Created hosting of Wordpress site and 

## 08 GitHub Actions

1. Events that trigger workflows: https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows
2. Expressions: https://docs.github.com/en/actions/learn-github-actions/expressions
3. Contexts: https://docs.github.com/en/actions/learn-github-actions/contexts
4. Variables: https://docs.github.com/en/actions/learn-github-actions/variables
5. Using jobs in a workflow: https://docs.github.com/en/actions/using-jobs/using-jobs-in-a-workflow
6. Run GitHub locally: https://github.com/nektos/act

## 09 CI/CD Jenkins

Jenkins 

1. Jenkins - https://www.jenkins.io/
2. Setup Jenkins server - https://aws.amazon.com/ru/getting-started/hands-on/setup-jenkins-build-server/
3. Use Jenkins in Azure - https://docs.microsoft.com/ru-ru/azure/developer/jenkins/
4. Jenkins free eBook  https://riptutorial.com/Download/jenkins.pdf