# Use Prometheus for monitoring and grafana for virtualiztion

![prometheus](../images/prometheus-logo.svg)           ![Grafana](../images/grafana-logo.png)

**we utilize ArgoCD as the deployment tool for our Prometheus stack. This is achieved by utilizing the Helm chart implementation.** you can see the application file from **[kube-prometheus-stack](https://github.com/mmelmesary/DevOps-Project/blob/master/ArgoCD/app-of-apps/prometheus-stack.yaml)** in ArgoCD directory.

### By default, this chart will deploy the following components:
- Prometheus server
- Alertmanager
- Grafana
- Prometheus node-exporter
- kube-state-metrics
- Prometheus adapter

**We can check this by viewing our pods in the monitoring namespace**

```bash
kubectl get pods -n monitoring 
```

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