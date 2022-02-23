resource "aws_ssm_parameter" "dms_endpoint" {
#   count       = var.secret_method == "ssm" ? 1 : 0
  name  = "/dms/${var.environment_name}-${var.endpoint_id}/ENDPOINT_ID"
  description = "DMS Endpoint"
  value = aws_dms_endpoint.default.endpoint_arn
  type  = "String"
}