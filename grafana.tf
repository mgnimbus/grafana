resource "grafana_data_source" "athena" {
  type = "grafana-athena-datasource"
  name = "cw-tf-managed"

  json_data_encoded = jsonencode({

    authType      = "ec2_iam_role"
    catalog       = "AwsDataCatalog"
    database      = "test-gaf-ath"
    defaultRegion = "us-east-1"
    workgroup     = "test-ath-gaf"

  })
}

resource "grafana_folder" "test_folder" {
  title = "Terraform Test Folder"
}

# SELECT record_value,metric_value,dt FROM grafana_lens_reports WHERE record_type = '"PREFIX"'
