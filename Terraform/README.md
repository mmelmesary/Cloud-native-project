# Use Terraform to create our EKS cluster
<p align="center">
<img src="../images/eks-terraform.svg" width="500" alt="EKS BY Terraform" />
</p>

## Prerequisites
- [x] AWS Account
- [x] Proper Permissions for your user
- [X] Terraform installed on your IDE
- [X] AWS CLI installed and configured on your IDE
## Deploy the terraform code

1. Clone the Github repository.

    ```bash
    git clone https://github.com/mmelmesary/DevOps-Project.git
    ```

1. Move into the `terraform/` directory which contains the Terraform scripts.

    ```bash
    cd devops-project/terraform
    ```

1. Initialize Terraform.

    ```bash
    terraform init
    ```

1. See what resources will be created.

    ```bash
    terraform plan
    ```

1. Create the resources and deploy the sample.

    ```bash
    terraform apply
    ```

    - If there is a confirmation prompt, type `yes` and hit Enter/Return.

    Note: This step can take about 10 minutes. Do not interrupt the process.

1. Update your kubeconfig file 
  
    ```bash
    aws eks update-kubeconfig --name saurus --region us-east-1
    ```

## Clean up

1. Navigate to the `terraform/` directory.

1. Run the following command:

   ```bash
   terraform destroy
   ```

   1. If there is a confirmation prompt, type `yes` and hit Enter/Return.
