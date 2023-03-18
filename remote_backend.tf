terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "wahid-azure"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
