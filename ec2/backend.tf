terraform {
    backend "s3" {
      bucket = "kri-terra-demo"
      key = "myfiles/terraform.tfstate"
      use_lockfile = true
      region ="us-east-1"
    }
    
}
