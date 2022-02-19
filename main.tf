resource "aws_launch_template" "target" {
  name          = var.ec2_as_name
  image_id      = var.ami_id
  instance_type = var.ec2_size
  #  vpc_security_group_ids = var.vpc_sg_ids
  key_name = aws_key_pair.target.key_name

  # tags = {
  #   name = var.ec2_as_name
  # }
}

resource "aws_autoscaling_group" "target" {
  name                = var.ec2_as_name
  vpc_zone_identifier = var.vpc_subnet_ids
  desired_capacity    = var.ec2_as_desired_capacity
  max_size            = var.ec2_as_max_size
  min_size            = var.ec2_as_min_size
  health_check_type   = "EC2"
  launch_template {
    id      = aws_launch_template.target.id
    version = "$Latest"
  }
  # tags = {
  #   name = var.ec2_as_name
  # }

}

resource "aws_key_pair" "target" {
  key_name   = var.ec2_as_name
  public_key = var.ec2_key
}
