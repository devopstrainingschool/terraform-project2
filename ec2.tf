resource "aws_instance" "kouame" {
    ami = "ami-02f97949d306b597a"
    instance_type = "t2.micro"
    key_name = aws_key_pair.keypair.key_name
    subnet_id = aws_subnet.main.id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.internet.id]
    tags = {
        Name = "gaelle-server"
       
    }

}