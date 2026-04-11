# 🚀 Jerney — Blog Platform

Jerney is a modern full-stack blog platform built with a focus on **DevSecOps best practices**, scalable architecture, and secure CI/CD pipelines.

---

## ✨ Features

- 📝 Create blog posts with emoji vibes  
- ✏️ Edit your existing posts  
- 🗑️ Delete posts you're not feeling anymore  
- 💬 Comment on posts  

---
## 🏗️ Architecture
```
┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│   Frontend   │────▶│   Backend    │────▶│  PostgreSQL   │
│   (React +   │◀────│  (Node.js +  │◀────│              │
│    Nginx)    │     │   Express)   │     │              │
│   Port 80    │     │  Port 5000   │     │  Port 5432   │
└──────────────┘     └──────────────┘     └──────────────┘
```


📁 Project Structure

```
Jerney/
├── frontend/                # React (Vite) frontend
│   ├── src/                 # React components & pages
│   ├── nginx.conf           # Nginx config for serving the app
│   └── package.json
├── backend/                 # Node.js Express API
│   ├── src/                 # Routes, DB connection
│   └── package.json
├── deploy/                  # EC2 deployment scripts
│   ├── setup.sh             # One-click EC2 setup script
│   └── jerney-nginx.conf    # Nginx reverse proxy config
└── README.md
```


---

## 📡 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/health` | Health check |
| GET | `/api/posts` | Get all posts |
| GET | `/api/posts/:id` | Get single post with comments |
| POST | `/api/posts` | Create a new post |
| PUT | `/api/posts/:id` | Update a post |
| DELETE | `/api/posts/:id` | Delete a post |
| GET | `/api/comments/post/:postId` | Get comments for a post |
| POST | `/api/comments` | Create a comment |
| DELETE | `/api/comments/:id` | Delete a comment |

---

## 🌿 Branch Strategy

| Branch | Purpose |
|--------|--------|
| `main` | Terraform IaC for EKS |
| `stage` | Full DevSecOps pipeline (Docker, Kubernetes, CI/CD, Security Scanning) |

---

## 🔐 DevSecOps Practices Implemented

- ✔️ Custom VPC creation  
- ✔️ EKS deployed in private subnets  
- ✔️ Multi-stage Docker builds  
- ✔️ Non-root user in containers  
- ✔️ Secrets management in Docker Compose  
- ✔️ Kubernetes Network Policies  
- ✔️ Secure CI/CD pipeline  

---

## 🔥 CI/CD Security Pipeline
Lint (ESLint) → Code Quality  
↓  
SAST (SonarQube) → Security Analysis (Planned)  
↓  
SCA (npm audit) → Dependency Scan  
↓  
IaC & K8s Scan (Checkov)  
↓  
Dockerfile Lint (Hadolint)  
↓  
Build Image  
↓  
Container Scan (Trivy) → Image Security  
↓  
Deploy → Runtime  

## 🚀 Tech Stack

- Frontend: React (Vite) + Nginx  
- Backend: Node.js + Express  
- Database: PostgreSQL  
- Containerization: Docker  
- Orchestration: Kubernetes (EKS)  
- IaC: Terraform  
- CI/CD: GitHub Actions  

---

## 📌 Future Enhancements

- 🔍 SAST integration with SonarQube  
- 📊 Monitoring & Observability (Prometheus + Grafana)  
- 🔐 Secrets management with Vault  
- 🚀 Progressive delivery (Canary / Blue-Green)  

---

## 👨‍💻 Author

**Kanak Paul**
