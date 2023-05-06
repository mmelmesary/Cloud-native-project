# Use Prometheus for monitoring and grafana for virtualiztion

![prometheus](../images/prometheus-logo.svg)           ![Grafana](../images/grafana-logo.png)

We use ArgoCD to deploy our prometheus stack, you can see the application file from **[kube-prometheus-stack](https://github.com/mmelmesary/DevOps-Project/blob/master/ArgoCD/app-of-apps/prometheus-stack.yaml)** in ArgoCD directory.

### To access the prometheus UI
  ```bash
  kubectl -n monitoring port-forward svc/monitoring-kube-prometheus-prometheus  9090:9090
  ```
### To access the grafana UI
  ```bash
  kubectl -n monitoring port-forward svc/monitoring-grafana 3000:80
  ```
**We must get our credentials to login.**

```bash
kubectl get secret -n monitoring monitoring-grafana -o=jsonpath='{.data.admin-user}' | base64 -d
kubectl get secret -n monitoring monitoring-grafana -o=jsonpath='{.data.admin-password}' | base64 -d
```