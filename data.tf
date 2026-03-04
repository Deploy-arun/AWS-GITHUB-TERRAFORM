data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

data "aws_iam_role" "eks_cluster_role" {
  name = "eksclusterrole"
}

data "aws_iam_role" "node_group_role" {
  name = "ec2eksnode"
}