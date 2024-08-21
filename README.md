# confluent-kafka-cluster

This repo contains terraform code which provisions resources in Confluent Cloud. These resources provisioned are:

- Confluent Environment
- Confluent Kafka Cluster
- Confluent Kafka Topic
- Producer and Consumer Service Accounts
- ACL for the Producer with write permissions to topic
- ACL for the Consumer with read permissions to topic
- API keys for the Producer and Consumer applications to authenticate with Confluent Cloud.

These resources are defined in [main.tf](./terraform/main.tf).

## Deployment of Resources

This is just a proof of concept so there are no deployment pipelines.

## Set Environment Variables

Terraform needs credentials to create resources in Confluent Cloud. Locally, we can do that by defining an API key and secret in the environment variables. These two values can be generated through the Confluent Cloud console.

```bash
export CONFLUENT_CLOUD_API_KEY=<API_KEY>
export CONFLUENT_CLOUD_API_SECRET=<API_SECRET>
```

### Initialise Project

Initialise the Terraform project:

```bash
terraform init                                 
```

### Terraform Plan

Create a Terraform plan:

```bash
terraform plan -out main.tfplan
```

### Terraform Apply

Apply the plan and deploy resources to Confluent Cloud.

```bash
terraform apply "main.tfplan"        
```

### Terraform Destroy

To de-provision the deploy resources:

```bash
Terraform destroy
```
