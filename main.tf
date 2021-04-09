terraform {
  required_version = "~> 0.14"
  backend "remote" {
    hostname      = "app.terraform.io"
    organization  = "tapanjeet"

    workspaces {
      name = "state-migration"
    }
  }
}



resource "random_id" "name" {

byte_length = 8
}

output "test"{
   value       = random_id.name
}
