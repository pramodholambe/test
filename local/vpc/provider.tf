terraform {
    backend "s3" {
        bucket= "bucket-pramod"
        region= "var.region"
        key= "tfstate"
    }
}
provider "aws" {
    region= "var.region"
}
