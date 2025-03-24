aws_region                  = "us-east-1"
queue_name                  = "queue-name-dev"
delay_seconds               = 0
max_message_size            = 262144
message_retention_seconds   = 345600
message_retention_seconds_dlq = 1209600
receive_wait_time_seconds   = 0
visibility_timeout_seconds  = 30
tags                        = {
  Environment = "dev"
  Project     = "Project"
}