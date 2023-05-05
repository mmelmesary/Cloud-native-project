# Continuous Delivery with EKS and ArgoCD

## Step 1: Install ArgoCD and ArgoCD CLI tool

 **We first need to create a namespace for ArgoCD and install it.**
  ```bash
  kubectl create ns argocd
  kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.4.7/manifests/install.yaml -n argocd
  ```
**Check all resources get installed** 
  ```bash
  kubectl get all -n argocd
  ```
**Install ArgoCD CLI**
> You can download the latest Argo CD version from **[the latest release page of this repository](https://github.com/argoproj/argo-cd/releases/tag/v2.7.1)**, which will include the argocd CLI

## Step 2 Configuring ArgoCD:
 
  ```bash
  kubectl port-forward svc/argocd-server -n argocd 8080:443
  ```
We must now get our credentials to login.

  ```bash
  kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
  ```
This secret where the argocd server password is stored is not secure and should be deleted after updating the password with the command below.
  
  ```bash
  argocd account update-password
  ```
we will use the declarative way to deploy our CRD app in k8s

```bash
kubectl apply -f ArgoCD/application.yaml
```

