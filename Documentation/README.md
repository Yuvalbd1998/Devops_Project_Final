
# DevOps Project: Jenkins CI/CD with FastAPI and K3s Deployment

## Overview
This project includes:
1. A FastAPI "Hello, World!" application.
2. A Jenkins pipeline with a spellcheck stage.
3. K3s (Kubernetes) deployment for the FastAPI application.

## Prerequisites
- A fresh Linux machine with internet access.

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/<your-username>/DevOps_HelloWorld.git
   cd DevOps_HelloWorld
   ```

2. **Run the Setup Script**:
   - This script installs dependencies, starts Jenkins, and deploys the app:
     ```bash
     chmod +x Scripts/setup.sh
     ./Scripts/setup.sh
     ```

3. **Jenkins First-Time Setup**:
   - After running the script, the Jenkins initial admin password will be displayed in the terminal.
   - Open Jenkins at [http://localhost:8080](http://localhost:8080).
   - Paste the **initial admin password** when prompted.

4. **Verify the K3s Deployment**:
   ```bash
   kubectl get pods
   ```

5. **Access the FastAPI Application**:
   - Retrieve the service NodePort:
     ```bash
     kubectl get svc fastapi-service
     ```
   - Access at: `http://<node-ip>:<node-port>`

## Jenkins Pipeline Stages
- **Spellcheck**: Runs codespell to validate `README.md`.
- **Build FastAPI**: Installs dependencies and starts FastAPI.
- **Deploy to K3s**: Deploys the FastAPI app to Kubernetes.

## License
This project is licensed under MIT License.
