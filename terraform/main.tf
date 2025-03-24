provider "aws" {
  region = var.aws_region
}

module "sqs_queue" {
  source                    = "./modules/sqs_queue"
  queue_name                = var.queue_name
  delay_seconds             = var.delay_seconds
  max_message_size          = var.max_message_size
  message_retention_seconds = var.message_retention_seconds
  message_retention_seconds_dlq = var.message_retention_seconds_dlq
  receive_wait_time_seconds = var.receive_wait_time_seconds
  visibility_timeout_seconds = var.visibility_timeout_seconds
  tags                      = var.tags
}
