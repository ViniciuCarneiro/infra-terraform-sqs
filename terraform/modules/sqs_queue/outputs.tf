output "queue_url" {
  description = "URL da fila SQS principal criada."
  value       = aws_sqs_queue.this.id
}

output "queue_arn" {
  description = "ARN da fila SQS principal criada."
  value       = aws_sqs_queue.this.arn
}

output "dlq_url" {
  description = "URL da fila DLQ criada."
  value       = aws_sqs_queue.dlq.id
}

output "dlq_arn" {
  description = "ARN da fila DLQ criada."
  value       = aws_sqs_queue.dlq.arn
}
