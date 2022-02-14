// create one ec2 instance
resource "aws_instance" "iam_ec2" {
  instance_type               = "t2.micro"
  ami                         = "ami-0a8b4cd432b1c3063"
  associate_public_ip_address = true // boolean, only two values either true or false
  iam_instance_profile        = aws_iam_instance_profile.my_ec2_profile.id
  tags = {
    Name     = "ec2-IAM"
    Location = "Bangalore"
  }

}

// IAM ROLE
resource "aws_iam_role" "ec2_s3_role" {
  name = "ec2_s3_terrafrom_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = {
    tag-key = "ec2_s3_terrafrom_role"
  }
}

// ec2 instance profile

resource "aws_iam_instance_profile" "my_ec2_profile" {
  name = "my_ec2_profile"
  role = aws_iam_role.ec2_s3_role.name
}

// we have policy that needs to be attched to a role
resource "aws_iam_role_policy" "my_custome_policy" {
  name = "my_custom_policy"
  role = aws_iam_role.ec2_s3_role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}