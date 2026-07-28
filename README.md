# 🚀 Flask API with GitHub Actions CI/CD

A simple REST API built with **Python Flask** that demonstrates a complete **CI/CD pipeline** using **GitHub Actions**. Every push to the repository automatically installs dependencies, runs tests, builds a Docker image, and pushes it to Docker Hub.

This project is designed as a beginner-friendly DevOps portfolio project to demonstrate:

- Python Flask development
- REST API creation
- Unit testing with Pytest
- Docker containerization
- GitHub Actions CI/CD
- Docker Hub image publishing

---

# 📚 Table of Contents

- Project Overview
- Architecture
- Features
- Tech Stack
- Project Structure
- API Endpoints
- Installation
- Running Locally
- Running Tests
- Docker
- GitHub Actions Pipeline
- Environment Variables
- Future Improvements
- License

---

# 📖 Project Overview

This application exposes a few simple REST API endpoints.

Whenever code is pushed to GitHub, a GitHub Actions workflow automatically performs the following tasks:

1. Install Python dependencies
2. Run unit tests using Pytest
3. Build a Docker image
4. Authenticate with Docker Hub
5. Push the Docker image

This project demonstrates the foundations of modern CI/CD.

---

# 🏗 Architecture

```
Developer
     │
     ▼
Git Push
     │
     ▼
GitHub Repository
     │
     ▼
GitHub Actions
     │
     ├── Checkout source
     ├── Setup Python
     ├── Install dependencies
     ├── Run pytest
     ├── Build Docker image
     ├── Login to Docker Hub
     └── Push Docker image
                  │
                  ▼
             Docker Hub
```

---

# ✨ Features

- REST API with Flask
- Health check endpoint
- User endpoint
- Unit testing with Pytest
- Docker support
- GitHub Actions CI pipeline
- Automatic Docker image publishing

---

# 🛠 Tech Stack

| Technology | Purpose |
|------------|---------|
| Python | Programming Language |
| Flask | Web Framework |
| Pytest | Testing |
| Docker | Containerization |
| GitHub Actions | CI/CD |
| Docker Hub | Container Registry |

---

# 📂 Project Structure

```
.
├── app.py
├── requirements.txt
├── test_app.py
├── Dockerfile
├── .dockerignore
├── .gitignore
├── README.md
└── .github
    └── workflows
        └── ci.yml
```

---

# 🌐 API Endpoints

## GET /

Returns a welcome message.

Example response

```json
{
    "message": "Welcome to Flask API"
}
```

---

## GET /health

Returns the application health status.

Example response

```json
{
    "status": "healthy"
}
```

---

## GET /users

Returns a sample list of users.

Example response

```json
[
    {
        "id": 1,
        "name": "Alice"
    },
    {
        "id": 2,
        "name": "Bob"
    }
]
```

---

# ⚙ Installation

Clone the repository

```bash
git clone https://github.com/yourusername/flask-api-github-actions.git

cd flask-api-github-actions
```

Create a virtual environment

```bash
python3 -m venv venv
```

Activate it

Linux/macOS

```bash
source venv/bin/activate
```

Windows

```powershell
venv\Scripts\activate
```

Install dependencies

```bash
pip install -r requirements.txt
```

---

# ▶ Running Locally

Start the application

```bash
python app.py
```

Server

```
http://localhost:5000
```

Example

```bash
curl http://localhost:5000/health
```

---

# ✅ Running Tests

Execute

```bash
pytest
```

Expected output

```
=====================
3 passed
=====================
```

---

# 🐳 Docker

## Build

```bash
docker build -t flask-api .
```

## Run

```bash
docker run -p 5000:5000 flask-api
```

Open

```
http://localhost:5000
```

---

# ⚡ GitHub Actions Pipeline

The workflow is automatically triggered on every push.

Pipeline stages:

```
Git Push
      │
      ▼
GitHub Actions
      │
      ├── Checkout Repository
      ├── Setup Python
      ├── Install Dependencies
      ├── Run pytest
      ├── Build Docker Image
      ├── Login Docker Hub
      └── Push Docker Image
```

---

# 🔐 Required GitHub Secrets

The workflow expects the following repository secrets:

| Secret | Description |
|---------|-------------|
| DOCKER_USERNAME | Docker Hub username |
| DOCKER_PASSWORD | Docker Hub access token |

---

# 🚀 Docker Image

After a successful pipeline execution, the image is available on Docker Hub.

Example:

```
docker pull yourusername/flask-api:latest
```

---

# 📈 Future Improvements

- Deploy to Kubernetes
- Deploy to AWS EC2
- Add Swagger/OpenAPI documentation
- Add PostgreSQL database
- Add Authentication (JWT)
- Add Logging
- Add Prometheus metrics
- Add Grafana dashboards
- Add SonarQube code analysis
- Add Security scanning (Trivy)
- Add Multi-stage Docker builds
- Add Docker Compose support
- Add CD deployment workflow

---

# 🎯 Learning Objectives

By completing this project, you will gain practical experience with:

- Building REST APIs using Flask
- Writing automated tests with Pytest
- Containerizing Python applications with Docker
- Creating CI/CD pipelines using GitHub Actions
- Publishing Docker images to Docker Hub
- Managing GitHub Secrets
- Understanding modern DevOps workflows

---

# 📄 License

This project is provided for educational and portfolio purposes. Feel free to modify and extend it for your own learning.
