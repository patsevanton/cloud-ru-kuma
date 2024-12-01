terraform {
  required_providers {
    cloudru = {
      source  = "cloud.ru/cloudru/cloud"
      version = "1.0.0"
    }
  }
}

provider "cloudru" {
  project_id = "xxx"
  customer_id = "xxx"
  auth_key_id = "xxx"
  auth_secret = "xxx"

  # NOTE: Это опциональный параметр, требуется для работы с IAM (в следующей версии станет обязательным)
  iam_endpoint = "api.iam.sbercloud.ru:443"

  # NOTE: Это опциональный параметр, требуется для работы с K8S
  k8s_endpoint = "mk8s.api.cloud.ru:443"

  # NOTE: Это опциональный параметр, требуется для работы с Evolution
  evolution_endpoint = "https://compute.api.cloud.ru"

  # NOTE: Это опциональный параметр, требуется для работы с CloudPlatform
  cloudplatform_endpoint = "organization.api.cloud.ru:443"

  # NOTE: Это опциональный параметр, требуется для работы с DBaaS
  dbaas_endpoint = "dbaas.api.cloud.ru:443"

}