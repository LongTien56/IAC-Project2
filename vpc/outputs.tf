output "private_subnet" {
  value       = [
    for v in aws_subnet.private_subnet : v.id
  ]
}
output "public_subnet" {
  value       = [
    for v in aws_subnet.public_subnet : v.id
  ]
}

output "vpc_id" {
  value = aws_vpc.main.id
}

# output "subnet_combined" {
#   value = merge(public_subnet, private_subnet)
# }

# output "private_subnet_id" {
#   value       = {
#     private_subnet_id = aws_subnet.private_subnet[*].id
#   }
# }