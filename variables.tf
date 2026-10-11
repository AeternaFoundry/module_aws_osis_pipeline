variable "osis_pipelines" {
  description = <<EOT
Map of osis_pipelines, attributes below
Required:
    - max_units
    - min_units
    - pipeline_configuration_body
    - pipeline_name
Optional:
    - pipeline_role_arn
    - region
    - tags
    - buffer_options (block):
        - persistent_buffer_enabled (required)
    - encryption_at_rest_options (block):
        - kms_key_arn (required)
    - log_publishing_options (block):
        - cloudwatch_log_destination (optional, block):
            - log_group (required)
        - is_logging_enabled (optional)
    - vpc_options (block):
        - security_group_ids (optional)
        - subnet_ids (required)
        - vpc_endpoint_management (optional)
EOT

  type = map(object({
    max_units                   = number
    min_units                   = number
    pipeline_configuration_body = string
    pipeline_name               = string
    pipeline_role_arn           = optional(string)
    region                      = optional(string)
    tags                        = optional(map(string))
    buffer_options = optional(list(object({
      persistent_buffer_enabled = bool
    })))
    encryption_at_rest_options = optional(list(object({
      kms_key_arn = string
    })))
    log_publishing_options = optional(list(object({
      cloudwatch_log_destination = optional(list(object({
        log_group = string
      })))
      is_logging_enabled = optional(bool)
    })))
    vpc_options = optional(list(object({
      security_group_ids      = optional(set(string))
      subnet_ids              = set(string)
      vpc_endpoint_management = optional(string)
    })))
  }))
}

