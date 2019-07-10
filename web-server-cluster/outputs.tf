output "elb_dns_name" {
  value = "${aws_elb.example.dns_name}"
}

variable "wt" {
  description = "show current_workspace"

  default = {
    "development" = "hello develop"
    "testing"     = "hello testing"
    "stagging"    = "hello stagging"
  }
}

output "current_workspace" {
  value = "${lookup(var.wt, terraform.workspace, "workspace not found")}"
}
