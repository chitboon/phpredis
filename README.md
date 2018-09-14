The cloudformation template assumes us-west-2 region, and keyname is uswest2, change the value accordingly
Run the cloudformation template to create 1 vpc + 2 public subnet + 2 private subnet + 1 EC2 in us-west-2
Browse to <ec2 public address>/demo.php to see that EC2 is set up successfully
Create redis elastic cache (non-cluster, non-encrypted), make sure security group allows TCP 6379 from the EC2 security group
Create rds, make sure security group allows TCP 3306 from the EC2 security group
Update config.php in /var/www/html with the correct redis and rds info.
Browse to demo.php again, and you should see the configured values displayed accordingly.
redis.php can be used for testing, change the endpoint accordingly.
