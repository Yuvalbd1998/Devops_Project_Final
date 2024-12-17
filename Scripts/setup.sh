
#!/bin/bash

echo "Updating system and installing dependencies..."

# Update system
sudo apt update && sudo apt upgrade -y

# Install Docker and Docker Compose
sudo apt install -y docker.io docker-compose

# Install Python3 and pip
sudo apt install -y python3 python3-pip

# Install codespell for spellcheck
pip3 install codespell

# Install K3s (lightweight Kubernetes)
curl -sfL https://get.k3s.io | sh -

# Start Jenkins with Docker Compose
echo "Starting Jenkins..."
cd CI_CD/Jenkins
docker-compose up -d

echo "Waiting for Jenkins to initialize..."
sleep 60

# Retrieve Jenkins initial admin password
echo "Fetching Jenkins initial admin password..."
docker exec $(docker ps -qf "name=jenkins") cat /var/jenkins_home/secrets/initialAdminPassword

echo "Jenkins is running at http://localhost:800"
echo "Copy the password gave in the README file and paste it into Jenkins."
