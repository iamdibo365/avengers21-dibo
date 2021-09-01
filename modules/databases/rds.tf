resource "aws_rds_cluster" "default" {
  cluster_identifier      = var.cluster_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  availability_zones      = var.az
  database_name           = var.dbname
  master_username         = var.username
  master_password         = var.masterpw
  backup_retention_period = var.retention_period
  preferred_backup_window = var.backup_window
  skip_final_snapshot     = var.final_snapshot
  tags = var.tags
}
