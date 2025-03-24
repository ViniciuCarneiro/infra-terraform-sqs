variable "queue_name" {
  description = "Nome da fila SQS."
  type        = string
}

variable "delay_seconds" {
  description = "Atraso padrão para mensagens na fila (em segundos)."
  type        = number
  default     = 0
}

variable "max_message_size" {
  description = "Tamanho máximo permitido para cada mensagem (em bytes)."
  type        = number
  default     = 262144  # 256 KB
}

variable "message_retention_seconds" {
  description = "Tempo de retenção das mensagens na fila principal (em segundos)."
  type        = number
  default     = 345600  # 4 dias
}

variable "message_retention_seconds_dlq" {
  description = "Tempo de retenção das mensagens na fila DLQ (em segundos)."
  type        = number
  default     = 1209600  # 14 dias
}

variable "receive_wait_time_seconds" {
  description = "Tempo de espera para long polling (em segundos)."
  type        = number
  default     = 0
}

variable "visibility_timeout_seconds" {
  description = "Tempo de timeout de visibilidade da fila (em segundos)."
  type        = number
  default     = 30
}

variable "tags" {
  description = "Mapa de tags para a fila SQS."
  type        = map(string)
  default     = {}
}
