# Configure the Confluent Provider
terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "1.80.0"
    }
  }
}

provider "confluent" {
  # optionally use CONFLUENT_CLOUD_API_KEY env var
  # optionally use CONFLUENT_CLOUD_API_SECRET env var
}
