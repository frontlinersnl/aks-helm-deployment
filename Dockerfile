FROM mcr.microsoft.com/azure-cli

# Install Kubectl + Kubectl login
# Install the CLI tools for AKS, which include kubectl and kubectl login. See https://learn.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest#az-aks-install-cli
RUN az aks install-cli

# Note: Latest version of helm may be found at:
# https://github.com/kubernetes/helm/releases
ENV HELM_VERSION="v3.14.2"

RUN apk add --no-cache ca-certificates bash git openssh curl \
    && wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
    && chmod +x /usr/local/bin/helm

CMD bash