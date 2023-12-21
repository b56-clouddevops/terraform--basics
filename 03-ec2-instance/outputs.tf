output "instance_dns" {
    value               = aws_instance.app.private_dns                                      # attributes
}

output "instance_arn" {
    value               = aws_instance.app.arn                                             # attributes
}
