resource "aws_instance" "web" {
   ami       = "ami-0715c1897453cabd1"
   instance_type      ="t2.medium"
   vpc_security_group_ids = [sg-0bc6197039e8af2ee]

   tags = {

     Name  = "Sonarqube"
   }

}