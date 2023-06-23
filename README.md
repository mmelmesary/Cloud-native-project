 # DevOps Project 

- **Our project is a cloud-native microservices-based application that is designed to run on Amazon Web Services (AWS) using Elastic Kubernetes Service (EKS). We use Terraform to manage our infrastructure as code, Istio to provide advanced traffic management and security features for our microservices, Prometheus and Grafana to monitor our distributed systems, and ArgoCD to manage our continuous delivery pipelines. By using these cloud-native technologies, we can take full advantage of the scalability, resilience, and elasticity of the cloud.**
______

## Use Terraform to provision an EKS cluster

Open source tool for managing infrastructure as code, ensuring consistency and reliability, making it easier to manage and scale cloud resources efficiently. 

> The [`terraform`](./Terraform) directory contains instructions for using [Terraform](https://www.terraform.io/intro) 

## Use Prometheus for monitoring and grafana for virtualiztion

 To monitor our distributed systems and ensure optimal performance. By collecting and analyzing metrics, visualizing performance data, and setting up custom alerting rules, we can quickly troubleshoot issues and take proactive measures to prevent downtime. With the ability to send notifications to our Slack channel, we can stay on top of critical incidents and respond in real-time. "

> The [`Monitoring`](./Monitoring) directory contains instructions for using prometheus and grafana.

## Use ArgoCD for GitOps automation 

This tool has enabled us to ensure rapid, reliable, and repeatable deployments, with minimal manual intervention. We can easily manage our deployments, rollbacks, and upgrades, all through a simple and intuitive UI.

> The [`ArgoCD`](./ArgoCD) directory contains instructions for using ArgoCD.

## Use Istio for advanced traffic management and security features

We have utilized Istio to provide advanced traffic management and security features for our microservices. This has allowed us to keep our application secure and efficient, while also providing detailed insights into traffic flow and performance. 

> The [`istio-manifests`](./istio-manifests/) directory contains instructions for using it.

## Use KEDA to autosacle our application

 We have used KEDA to make autoscaling a breeze. This tool has allowed our application to effortlessly scale in response to demand, ensuring that we can handle peak traffic loads without any issues.

> The [`KEDA`](./KEDA/) directory contains instructions for using it.

___
####  To learn more about each tool and how it contributes to the project, please see the README file in each directory:

- [Terraform](./Terraform/README.md)
- [ArgoCD](./ArgoCD/README.md)
- [Monitoring](./Monitoring/README.md)
- [Istio](./Istio%20manifests/README.md)
- [K8s-manifest](./kubernetes/README.md)
- [KEDA](./KEDA/README.md)
- [Kubeseal](https://github.com/mmelmesary/DevOps-Project/tree/master/Monitoring#step-2)



Thank you for exploring my project!


✨ If you’re using this demo, please **★Star** this repository to show your interest!