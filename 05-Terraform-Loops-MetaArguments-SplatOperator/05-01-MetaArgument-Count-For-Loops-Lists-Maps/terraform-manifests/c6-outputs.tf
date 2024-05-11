# Terraform Output Values
/* Concepts Covered
1. For Loop with List
2. For Loop with Map
3. For Loop with Map Advanced
4. Legacy Splat Operator (latest) - Returns List
5. Latest Generalized Splat Operator - Returns the List
*/

# Output - For Loop with List
output "for_output_list" {
  description = "For Loop with list"
  value = [for instance in aws_instance.test_ec2VM: instance.public_dns]
  
}

# Output - For Loop with Map
output "for_output_map1" {
  description = "For loop with map"
  value = {for instance in aws_instance.test_ec2VM: instance.id => instance.public_dns}
  
}
# Output - For Loop with Map Advanced
output "for_output_map2" {
  description = "for loop with map - Advanced"
  value = {for c, instance in aws_instance.test_ec2VM: c => instance.public_dns}
  
}

# Output Legacy Splat Operator (Legacy) - Returns the List

output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Operator"
  value = aws_instance.test_ec2VM.*.public_dns
  
}
# Output Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicdns" {
  description = "Generalized splat Expression"
  value = aws_instance.test_ec2VM[*].public_dns
}