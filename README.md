# Challenge Gorilla Logic


Deploy the code:

```
terraform init
terraform apply
```

When the `apply` command completes, it will output the DNS name of the load balancer. To test the load balancer:

```
curl http://<alb_dns_name>/
```

Clean up when you're done:

```
terraform destroy
```

I create a golden image of AMI  ami-0ffc807862e2e2f80 this image start
the version of development of the app (NODE_ENV=development).
This is a service on the OS start the JS app .
```
#!/bin/bash
source ${HOME}/.bashrc
cd /home/centos/timeoff-management
export NODE_ENV=development
npm start
```
And start a LB with the aws_autoscaling_group of min_size = 2 max_size = 10.

I started the configuration of the database but I had not time to configure 
the database and configure the database on the instances .