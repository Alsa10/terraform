resource "aws_instance" "web" {
   ami       = "ami-0715c1897453cabd1"
   instance_type      ="t2.medium"

   tags = {

     Name  = "Sonarqube"
   }

}