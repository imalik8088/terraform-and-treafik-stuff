
variable "region" {
  default = "eu-central-1"
}

variable "shared_credentials_file" {
  default = "/home/imalik/.aws/credentials"
}

variable "profile" {
  default = "terraform"
}

provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.profile}"
}

resource "aws_instance" "treafik" {
    ami = "ami-02724d1f"
    key_name = "aws-imalik8088"
    instance_type = "t2.micro"
    tags {
        Name = "treafik-tag, tag2"
    }
}
