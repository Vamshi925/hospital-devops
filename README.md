# 🏥 Hospital Appointment & Management System - DevOps Project

## 📖 Project Overview

This project demonstrates the transformation of a microservices-based **Hospital Appointment & Management System** into a production-style cloud-native application using modern DevOps practices.

The application consists of multiple Spring Boot microservices, a React frontend, and MySQL databases, all containerized with Docker and deployed on a Kubernetes (K3s) cluster using Helm. The complete deployment follows a GitOps workflow powered by Argo CD and includes monitoring with Prometheus and Grafana.

The primary objective of this project was to simulate a real-world DevOps environment by implementing CI/CD, Kubernetes orchestration, observability, scalability, and production best practices.

---

# 🚀 Technology Stack

| Category           | Technologies                          |
| ------------------ | ------------------------------------- |
| Frontend           | React.js                              |
| Backend            | Java 21, Spring Boot, Spring Security |
| Microservices      | Spring Cloud, Eureka, API Gateway     |
| Database           | MySQL                                 |
| Build Tool         | Maven                                 |
| Containerization   | Docker                                |
| Container Registry | Docker Hub                            |
| CI                 | GitHub Actions                        |
| GitOps             | Argo CD                               |
| Orchestration      | Kubernetes (K3s)                      |
| Package Management | Helm                                  |
| Ingress            | NGINX Ingress Controller              |
| Monitoring         | Prometheus                            |
| Visualization      | Grafana                               |
| Metrics            | Spring Boot Actuator                  |
| Autoscaling        | Horizontal Pod Autoscaler             |
| Operating System   | Ubuntu Linux                          |

---

# 🏗️ Microservices

The application consists of the following services:

* API Gateway
* Eureka Server
* Login Service
* Doctor Service
* Appointment Service
* Medical History Service
* Notification Service
* React Frontend

---

# ⚙️ DevOps Features Implemented

## Containerization

* Dockerized all microservices
* Dockerized React frontend
* Multi-stage Docker builds
* Optimized Docker images

---

## Kubernetes

Implemented Kubernetes resources including:

* Deployments
* Services
* ConfigMaps
* Secrets
* Namespaces
* Persistent Volumes
* Persistent Volume Claims
* RBAC
* Network Policies
* Ingress
* Horizontal Pod Autoscaler (HPA)
* Resource Requests
* Resource Limits
* Liveness Probes
* Readiness Probes

---

## Helm

Created a reusable Helm chart for deploying the complete Hospital Management System.

The chart templates include:

* Deployments
* Services
* ConfigMaps
* Secrets
* Ingress
* HPA
* ServiceMonitor
* Persistent Volumes
* Persistent Volume Claims

---

## GitHub Actions CI Pipeline

Implemented an automated CI pipeline that:

* Clones the repository
* Builds Docker images
* Builds the React application
* Pushes Docker images to Docker Hub
* Prepares images for Kubernetes deployment

---

## GitOps using Argo CD

Implemented GitOps deployment using Argo CD.

Features include:

* Automatic synchronization
* Continuous deployment from Git
* Self-healing deployments
* Drift detection
* Kubernetes manifest management through Git

---

# 📊 Monitoring & Observability

Monitoring stack implemented using **kube-prometheus-stack**.

Components:

* Prometheus
* Grafana
* ServiceMonitor
* Spring Boot Actuator
* JVM Metrics
* Kubernetes Metrics

Collected Metrics:

* CPU Usage
* Memory Usage
* Pod Health
* JVM Heap Usage
* JVM Threads
* HTTP Request Metrics
* Spring Boot Application Metrics

---

# 🔄 CI/CD Workflow

```text
Developer
     │
     ▼
Push Code to GitHub
     │
     ▼
GitHub Actions
     │
     ├── Build Backend Images
     ├── Build Frontend
     ├── Push Images to Docker Hub
     ▼
Git Repository Updated
     │
     ▼
Argo CD Detects Changes
     │
     ▼
Helm Deployment
     │
     ▼
Kubernetes Cluster
     │
     ▼
Application Updated
```

---

# 📈 Monitoring Workflow

```text
Spring Boot Applications
          │
          ▼
Spring Boot Actuator
          │
          ▼
ServiceMonitor
          │
          ▼
Prometheus
          │
          ▼
Grafana Dashboards
```

---

# 📂 Kubernetes Namespaces

The project uses dedicated namespaces for better isolation.

| Namespace     | Purpose                  |
| ------------- | ------------------------ |
| hospital      | Application Workloads    |
| argocd        | GitOps                   |
| monitoring    | Prometheus & Grafana     |
| ingress-nginx | NGINX Ingress Controller |

---

# 🔒 Production Features

Implemented production-ready Kubernetes practices:

* Resource Requests
* Resource Limits
* Health Checks
* Liveness Probes
* Readiness Probes
* Horizontal Pod Autoscaler
* RBAC
* Network Policies
* ConfigMaps
* Secrets
* Ingress Routing

---

# 📁 Project Structure

```text
hospital-devops
│
├── docker/
├── compose/
├── kubernetes/
│   ├── deployments/
│   ├── services/
│   ├── configmaps/
│   ├── secrets/
│   ├── ingress/
│   ├── monitoring/
│   ├── hpa/
│   ├── rbac/
│   ├── network-policies/
│   ├── persistent-volumes/
│   └── persistent-volume-claims/
│
├── helm/
│   └── hospital-chart/
│
├── argocd/
│
├── github/
│
├── scripts/
│
└── docs/
```

---

# 🖥️ Screenshots

Include screenshots for:

* GitHub Actions Workflow
* Docker Hub Images
* Argo CD Dashboard
* Kubernetes Pods
* Kubernetes Services
* HPA
* Ingress
* Prometheus Targets
* Grafana Dashboard
* Hospital Application UI

---

# 🐞 Challenges Solved During Development

During the implementation of this project, several real-world production issues were identified and resolved, including:

* Argo CD installation issues
* Missing CRDs
* Ingress webhook validation failures
* Kubernetes resource tuning
* CrashLoopBackOff debugging
* Prometheus ServiceMonitor discovery
* Grafana datasource configuration
* Incorrect frontend API endpoint after EC2 IP changes
* Kubernetes Ingress routing issues
* HTTP 503 troubleshooting
* Docker image deployment and update issues

---

# 🎯 Key Learning Outcomes

This project provided hands-on experience with:

* Microservices Deployment
* Docker Containerization
* Kubernetes Administration
* Helm Templating
* GitOps
* Continuous Integration
* Continuous Deployment
* Kubernetes Monitoring
* Kubernetes Troubleshooting
* Production Deployment Practices
* Cloud-native Application Management

---

# 🚀 Future Enhancements

Potential future improvements include:

* Versioned Docker image tags
* Multi-environment deployments (Dev, QA, Production)
* HTTPS using TLS certificates
* External DNS integration
* Centralized logging (ELK/Loki)
* Automated backup and restore strategy

---

# 👨‍💻 Author

**Vamshi Reddy !**

This project was developed as a comprehensive DevOps learning initiative to gain practical experience with containerization, Kubernetes, GitOps, CI/CD, monitoring, and production deployment workflows.
