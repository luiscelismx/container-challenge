# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "incode_log_group" {
  name              = "/ecs/incode-app"
  retention_in_days = 30

  tags = {
    Name = "incode-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "incode_log_stream" {
  name           = "incode-log-stream"
  log_group_name = aws_cloudwatch_log_group.incode_log_group.name
}
