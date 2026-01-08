# Automated Web Deployment Pipeline

## 📌 Project Overview
An automated deployment solution that provisions an Nginx web server on AWS EC2 and synchronizes content from GitHub using Bash scripting and Cron jobs.

## 🛠 Tech Stack
* **Cloud:** AWS (EC2, Security Groups)
* **OS:** Linux (Ubuntu 24.04 LTS)
* **Web Server:** Nginx
* **Automation:** Bash Scripting, Cron
* **Version Control:** Git/GitHub

## 🚀 How it Works
1. **Infrastructure:** An EC2 instance is configured with Port 80 (HTTP) open.
2. **Scripting:** `deploy.sh` automates the system updates, Nginx installation, and repo cloning.
3. **Continuous Deployment:** A Cron job runs every 5 minutes to pull the latest changes from the `main` branch.

