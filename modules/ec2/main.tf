resource "aws_instance" "web" {
  count                  = var.instance_count
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_ids[count.index % length(var.subnet_ids)]
  vpc_security_group_ids = [var.sg_id]

  # T3 instances ki Free Tier lo extra charges padakunda "standard" mode petti safe chestunnam
  credit_specification {
    cpu_credits = "standard"
  }

  # Root block storage (Optional but good practice)
  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  tags = {
    Name = "${var.project_name}-server-${count.index}"
    Env  = "Dev"
  }
}
