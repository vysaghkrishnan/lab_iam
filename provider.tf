provider "aws" {
    profile = "default"
    shared_credentials_file = "/home/ubuntu/.aws/credentials"
    region = var.AWS_REGION
    
}
