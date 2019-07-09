data "template_file" "server" {
  template = "${file("${path.module}/server.sh")}"
}
