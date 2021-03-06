resource "aws_eks_cluster" "eks_cluster" {
  name            = "${var.eks_cluster_name}"
  role_arn        = "${var.eks_iam_role_arn}"
  vpc_config {
    security_group_ids = ["${var.eks_security_group_id}"]
    subnet_ids         = ["${var.eks_cluster_subnet_ids}"]
  }
}