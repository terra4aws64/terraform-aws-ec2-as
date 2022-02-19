output "ec2_as_id" {
  value       = aws_autoscaling_group.target.id
  description = "EC2 AS: id"
}

output "ec2_as_arn" {
  value       = aws_autoscaling_group.target.arn
  description = "EC2 AS: ARN"
}
