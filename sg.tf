
# this example shows how to create a security group resource using the vpc created in the sandbox's baseline.
/*
resource "aws_security_group" "example_sg" {
  name        = "example_sg"
  description = "example sg to allow 443 from 1.2.3.4"
  vpc_id      = "${data.terraform_remote_state.baseline.vpc_id_primary}"

  ingress = {
    # TLS (change to whatever ports you need)
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["199.47.244.0/22","204.68.102.0/27","206.49.104.0/24","142.176.3.5/32","142.177.141.14/32","119.225.72.64/28","161.43.88.192/27","203.15.64.0/24","142.176.3.0/24","142.177.141.12/30","24.222.62.11/32","71.7.181.20/32","66.6.176.0/25"] # add a CIDR block here
  }
  egress = {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
*/
