output "alb_dns_name" {
  value       = aws_lb.timemgmt.dns_name
  description = "The domain name of the load balancer"
}
