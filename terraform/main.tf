data "confluent_environment" "development" {
  display_name = "Development"

}

resource "confluent_kafka_cluster" "basic" {
  display_name = "basic_kafka_cluster"
  availability = "SINGLE_ZONE"
  cloud        = "AWS"
  region       = "ap-southeast-2"
  basic {}

  environment {
    id = data.confluent_environment.development.id
  }

}

resource "confluent_service_account" "app-manager" {
  display_name = "app-manager"
  description  = "Service account to manage Kafka cluster"
}
