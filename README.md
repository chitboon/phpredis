1. The cloudformation template assumes us-west-2 region, and keyname is uswest2, change the value accordingly
1. Run the cloudformation template to create 1 vpc + 2 public subnet + 2 private subnet + 1 EC2 in us-west-2
1. Browse to <ec2 public address>/demo.php to see that EC2 is set up successfully
1. Create redis elastic cache (non-cluster, non-encrypted), make sure security group allows TCP 6379 from the EC2 security group
1. Create rds, make sure security group allows TCP 3306 from the EC2 security group
1. Update config.php in /var/www/html with the correct redis and rds info.
1. Browse to demo.php again, and you should see the configured values displayed accordingly.
1. redis.php can be used for testing, change the endpoint accordingly.
