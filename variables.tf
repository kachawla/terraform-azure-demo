variable "context" {
  type = any
  description = "This variable contains Radius recipe context."
}

variable "location" {
  type        = string
  description = "Redis cache deployment region."
}

variable "redis_cache_name" {
  type        = string
  description = "Name of the Redis Cache."
}

variable "capacity" {
  type = number
  description = "Size of the Redis Cache to deploy. Valid values: for C (Basic/Standard) family (0, 1, 2, 3, 4, 5, 6), for P (Premium) family (1, 2, 3, 4)."
  default = 0
}

variable "family" {
  type        = string
  description = "The SKU family to use. Valid values: (C, P). (C = Basic/Standard, P = Premium)."
  default = "C"
}

variable "sku_name" {
  type        = string
  description = "The type of Redis cache to deploy. Valid values: (Basic, Standard, Premium)"
  default     = "Basic"
}
