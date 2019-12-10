# aks-helm-deployment

[![logo](./inforit-logo.jpg)](https://inforit.nl)

Container for Helm deployments to an Azure Kubernetes (AKS) cluster.

## Instructions

1. update dockerfile
2. build local version:

    ```sh
    docker build -t inforitnl/aks-helm-deployment .
    ```

3. push new version to dockerhub:

    ```sh
    docker push inforitnl/aks-helm-deployment
    ```

4. tag and push again (optional but recommended):

    ```sh
    docker tag inforitnl/aks-helm-deployment inforitnl/aks-helm-deployment:1
    docker push inforitnl/aks-helm-deployment:1
    ```
