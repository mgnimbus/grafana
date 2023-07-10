terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "1.42.0"
    }
  }
}

provider "grafana" {
  url  = "https://g-49dd344107.grafana-workspace.us-east-1.amazonaws.com"
  auth = "eyJrIjoidVFrZjdQNDVxNU5TWldkUDBHWUtPMjU3TVFpVFBIVngiLCJuIjoidGVycmFmb3JtX21hbmFnZWRfZ3JhZmFuYSIsImlkIjoxfQ=="
}
