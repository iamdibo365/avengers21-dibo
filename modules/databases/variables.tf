variable "cluster_identifier" {
    type = string 
    default = "aurora-cluster-demo"
    description = "This is the name of the aurora cluster"
}

variable "engine" {
    type = string 
    default = "aurora-mysql"
    description = ""
}

variable "engine_version" {
    type = string 
    default = "5.7.mysql_aurora.2.03.2"
    description = ""
}

variable "az" {
    type = list(string)
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]
    description = "This is used to create a DB subnet group"
}

variable "dbname" {
    type = string
    default = "dibodb"
    description = "This is the DB name"
}

variable "username" {
    type = string
    default = "dibo"
    description = "This is username for the DB"
}

variable "masterpw" {
    type = string
    default = "Password123"
    description = "This is the password for the DB"
}

variable "retention_period" {
    type = number
    default = 5
    description = "This is backup retention period for the DB"
}

variable "backup_window" {
    type = string
    default = "07:00-09:00"
    description = "This is the backup window for the DB"
}

variable "final_snapshot" {
    type = bool 
    default = true
    description = "This is the final snapshot for the DB"
}

variable "tags" {
    type = map 
    default = {
        Name = "DEVDB"
        Env = "PROD"
    }
}
