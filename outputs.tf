output "osis_pipelines_id" {
  description = "Map of id values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "osis_pipelines_buffer_options" {
  description = "Map of buffer_options values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.buffer_options if v.buffer_options != null && length(v.buffer_options) > 0 }
}
output "osis_pipelines_encryption_at_rest_options" {
  description = "Map of encryption_at_rest_options values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.encryption_at_rest_options if v.encryption_at_rest_options != null && length(v.encryption_at_rest_options) > 0 }
}
output "osis_pipelines_ingest_endpoint_urls" {
  description = "Map of ingest_endpoint_urls values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.ingest_endpoint_urls if v.ingest_endpoint_urls != null && length(v.ingest_endpoint_urls) > 0 }
}
output "osis_pipelines_log_publishing_options" {
  description = "Map of log_publishing_options values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.log_publishing_options if v.log_publishing_options != null && length(v.log_publishing_options) > 0 }
}
output "osis_pipelines_max_units" {
  description = "Map of max_units values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.max_units if v.max_units != null }
}
output "osis_pipelines_min_units" {
  description = "Map of min_units values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.min_units if v.min_units != null }
}
output "osis_pipelines_pipeline_arn" {
  description = "Map of pipeline_arn values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.pipeline_arn if v.pipeline_arn != null && length(v.pipeline_arn) > 0 }
}
output "osis_pipelines_pipeline_configuration_body" {
  description = "Map of pipeline_configuration_body values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.pipeline_configuration_body if v.pipeline_configuration_body != null && length(v.pipeline_configuration_body) > 0 }
}
output "osis_pipelines_pipeline_name" {
  description = "Map of pipeline_name values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.pipeline_name if v.pipeline_name != null && length(v.pipeline_name) > 0 }
}
output "osis_pipelines_pipeline_role_arn" {
  description = "Map of pipeline_role_arn values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.pipeline_role_arn if v.pipeline_role_arn != null && length(v.pipeline_role_arn) > 0 }
}
output "osis_pipelines_region" {
  description = "Map of region values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.region if v.region != null && length(v.region) > 0 }
}
output "osis_pipelines_tags" {
  description = "Map of tags values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "osis_pipelines_tags_all" {
  description = "Map of tags_all values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "osis_pipelines_vpc_options" {
  description = "Map of vpc_options values across all osis_pipelines, keyed the same as var.osis_pipelines"
  value       = { for k, v in aws_osis_pipeline.osis_pipelines : k => v.vpc_options if v.vpc_options != null && length(v.vpc_options) > 0 }
}

