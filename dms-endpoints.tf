# Create an endpoint for the database
resource "aws_dms_endpoint" "default" {
  # count                       = var.endpoint_type == "target" || var.endpoint_type == "source" ? 1 : 0
  endpoint_type               = var.endpoint_type
  engine_name                 = var.engine_name
  kms_key_arn                 = try(var.kms_key_arn, "")
  certificate_arn             = var.certificate_arn
  
  server_name                 = var.server_name
  database_name               = var.database_name
  endpoint_id                 = var.endpoint_id
  password                    = var.password
  username                    = var.username
  port                        = var.port 
  extra_connection_attributes = ""
  ssl_mode                    = try(var.ssl_mode, "none")
  
  # tags = {
  #   "Endpoint type"        = var.endpoint_type
  #   "Managed by"  = "Terraform"
  # }
}
