resource "tls_private_key" "mykey" {
    algorithm = "RSA"
    rsa_bits = 4096
}
resource "aws_key_pair" "keypair" {
    key_name = "kass-chou"
    public_key = "${tls_private_key.mykey.public_key_openssh}"
}

