resource "aws_security_group" "fastai" {
    name = "fast-ai-security-group"
    description = "SG for fast.ai machine"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 8888
        to_port = 8898
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    vpc_id = "${aws_vpc.default.id}"
}

resource "aws_instance" "fastai" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${aws_security_group.fastai.id}"]
    subnet_id = "${aws_subnet.public.id}"
    associate_public_ip_address = true

    ebs_block_device {
        device_name = "/dev/sda1"
        volume_type = "gp2"
        volume_size = 128
        delete_on_termination = true
    }

    tags {
        Name = "fast-ai-gpu-machine"
    }
}

resource "aws_eip" "fastai" {
  vpc      = true
  depends_on = ["aws_internet_gateway.default"]
  instance = "${aws_instance.fastai.id}"
}

resource "aws_key_pair" "auth" {
    key_name = "${var.aws_key_name}"
    public_key = "${file(var.aws_key_path)}"
}
