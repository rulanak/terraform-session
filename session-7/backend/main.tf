resource "aws_db_instance" "main" {
  allocated_storage         = 10
  identifier                = "${var.env}-db-instance" //name of RDS instance
  db_name                   = "mydb"                   // name of db inside rds 
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  username                  = "admin"
  password                  = random_password.db_password.result
  skip_final_snapshot       = var.env != "prod" ? true : false
  final_snapshot_identifier = var.env != "prod" ? null : "${var.env}-final-db-snapshot"
}