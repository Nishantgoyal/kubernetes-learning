
terraform {
  backend "remote" {
    organization = "nishant_personal"
    workspaces {
      name = "kubernetes-the-hard-way"
    }
  }
}


resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}