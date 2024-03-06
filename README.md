# aks-helm-deployment

[![logo](./frontliners-logo.png)](https://www.frontliners.nl)

Container for Helm deployments to an Azure Kubernetes (AKS) cluster.

## Instructions

1. update dockerfile
2. build local version:

    ```sh
    docker build -t frontliners/aks-helm-deployment .
    ```

3. push new version to dockerhub:

    ```sh
    docker push frontliners/aks-helm-deployment
    ```

4. tag and push again (optional but recommended):

    ```sh
    docker tag frontliners/aks-helm-deployment frontliners/aks-helm-deployment:1
    docker push frontliners/aks-helm-deployment:1
    ```
