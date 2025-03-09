# .NET with Skaffold & Kubernetes

This repository demonstrates a simple workflow for developing and managing a .NET Web API application using Skaffold and Kubernetes.

## Prerequisites

Ensure you have the following tools installed:

- [.NET SDK](https://dotnet.microsoft.com/download)
- [Kind](https://kind.sigs.k8s.io/)
- [Skaffold](https://skaffold.dev/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Docker](https://docs.docker.com/get-docker/) or [Podman](https://podman.io/)

## Quick Start

### Build and Run the Application

Simply run:

```bash
make build
make dev
```

This sets up your local Kubernetes environment and starts the development server with automatic updates.

### Clean Up

To remove your local Kubernetes environment and clean up:

```bash
make clean
```
