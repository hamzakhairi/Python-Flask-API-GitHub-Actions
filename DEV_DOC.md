# 👨‍💻 Developer Documentation

This document explains how to set up the development environment, run the Flask application, execute tests, and build the Docker image.

---

# Project Structure

```
.
├── app.py
├── requirements.txt
├── Dockerfile
├── Makefile
├── tests/
│   └── test_app.py
├── DEV_DOC.md
└── README.md
```

---

# Prerequisites

Make sure the following tools are installed:

- Python 3.11+
- pip
- virtualenv (optional)
- Docker
- Make

---

# 1. Clone the Repository

Clone the project from GitHub.

```bash
git clone <repository-url>
cd Python-Flask-API-GitHub-Actions
```

---

# 2. Create a Virtual Environment

Create an isolated Python environment.

```bash
python3 -m venv venv
```

Activate it.

Linux/macOS

```bash
source venv/bin/activate
```

---

# 3. Install Dependencies

Install all required Python packages.

```bash
make install
```

Equivalent command:

```bash
pip install -r requirements.txt
```

---

# 4. Run the Application

Start the Flask development server.

```bash
make run
```

Equivalent command:

```bash
python app.py
```

The API will be available at:

```
http://localhost:5000
```

---

# 5. Run Unit Tests

Execute all API tests using Pytest.

```bash
make test
```

Equivalent command:

```bash
python -m pytest
```

Pytest automatically discovers tests inside the `tests/` directory.

---

# 6. Build Docker Image

Build the application Docker image.

```bash
make docker-build
```

Equivalent command:

```bash
docker build -t flask-api .
```

---

# 7. Run Docker Container

Run the application inside Docker.

```bash
make docker-run
```

Equivalent command:

```bash
docker run -p 5000:5000 flask-api
```

The API is available at:

```
http://localhost:5000
```

---

# 8. Clean Project

Remove Python cache files.

```bash
make clean
```

This removes:

- `__pycache__/`
- `.pytest_cache/`

---

# Makefile Targets

| Target | Description |
|---------|-------------|
| `make install` | Install project dependencies |
| `make run` | Start the Flask application |
| `make test` | Run all unit tests |
| `make docker-build` | Build the Docker image |
| `make docker-run` | Run the Docker container |
| `make clean` | Remove cache files |

---

# Development Workflow

Typical development cycle:

1. Activate the virtual environment.
2. Install dependencies.
3. Modify the application.
4. Run unit tests.
5. Start the Flask server.
6. Build the Docker image.
7. Commit and push changes.

---

# Continuous Integration

Every push to the GitHub repository automatically triggers the GitHub Actions workflow.

Pipeline steps:

1. Checkout repository
2. Install dependencies
3. Run Pytest
4. Build Docker image
5. Push image to Docker Hub

No manual deployment steps are required after pushing code if the workflow is configured correctly.