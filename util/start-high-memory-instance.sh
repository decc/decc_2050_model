#/bin/sh
ami_id=ami-1de8d369 # Ubuntu 12.04 'Precise' server
ec2-run-instances --private-key ~/.ssh/private-key-david-spike-aws.pem --cert ~/.ssh/public-certificate-david-spike-aws.pem -k ds-ec2 --instance-type m2.xlarge  $ami_id
sleep 10
ec2-describe-instances  --private-key ~/.ssh/private-key-david-spike-aws.pem --cert ~/.ssh/public-certificate-david-spike-aws.pem

