# Setting up Prometheus Alertmanager with Slack
> setting up Prometheus Alertmanager to send notifications to a slack channel 

**We will configure alertmanager to send notifications if:**
- If any instacnce has more cpu than 50%
- If any node goes down
- If any pod restarts more than 4 times
- If redis service goes down

**First create these two files**

```bash
kubectl apply -f ./monitoring/notifications/alert-manager.yaml
kubectl apply -f ./monitoring/notifications/alert-secret.yaml
```

### You can test that the alertmanager works correctly 

```bash
kubectl run cpu-test --image containerstack/cpustress -- --cpu 4 --timeout 30s --metrics-brief 
```
![slack-notifications](../../images/slack-notifications.PNG) 