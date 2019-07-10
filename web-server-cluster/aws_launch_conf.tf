resource "aws_launch_configuration" "example" {
  image_id        = "ami-40d28157"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.instance.id}"]

  user_data = "¢{data.template_file.server.rendered}"

  lifecycle {
    create_before_destroy = true
  }
}
