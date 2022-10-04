output "subnet_priv_ids" {
  value = { for k, v in aws_subnet.this : k => v.id }
}

output "subnet_pub_ids" {
  value = { for k, v in aws_subnet.thhiis : k => v.id }
}

output "subnets_priv" {
  value = aws_subnet.this
}

output "subnets_pub" {
  value = values(aws_subnet.thhiis)[*].id
}
