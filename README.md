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
