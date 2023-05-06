# Use Prometheus for monitoring and grafana for virtualiztion

<h1 align="center" style="border-bottom: none">
    <a href="//prometheus.io" target="_blank"><img alt="Prometheus" src="/documentation/images/prometheus-logo.svg"></a><br>Prometheus
</h1>

We use ArgoCD to deploy our prometheus stack, you can see the application file from **[kube-prometheus-stack](https://github.com/mmelmesary/DevOps-Project/blob/master/ArgoCD/app-of-apps/prometheus-stack.yaml)** in ArgoCD directory.

**To access the prometheus ui**
  ```bash
  kubectl -n monitoring port-forward svc/monitoring-kube-prometheus-prometheus  9090:9090
  ```