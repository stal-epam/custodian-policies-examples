# Terraform and Cloud Custodian
This repo includes terraform code for deploying the 2 EC2 instances and 1 S3 bucket for testing cloud custodian policies. 

# Version
``` python
# aws-cli and Python version
aws-cli/2.5.6 Python/3.9.11

# terraform version
Terraform v1.0.0

# cloud custodian version
0.9.14
```

# Commands
```python
# aws cli
aws s3 ls 
aws s3 ls --profile <AWS-profile>
aws configure list-profiles
```
```terraform
# terraform
terraform plan
terraform apply
# for destroy you should change termination protection for EC2 <disable_api_termination = false>
terraform destroy
```
```python
# cloud custodian dry-run
custodian run --dry-run <policy.yml> -s <output-dir> --region <AWS-region> --profile <AWS-profile>
# cloud custodian run
custodian run <policy.yml> -s <output-dir> --region <AWS-region> --profile <AWS-profile>
# cloud custodian disable cache
custodian run --cache-period 0 <policy.yml> -s <output-dir> --region <AWS-region> --profile <AWS-profile>
# cloud custodian verbose mode
custodian run --cache-period 0 <policy.yml> -s <output-dir> --region <AWS-region> --profile <AWS-profile> --verbose
```
## Links
[Cloud Custodian Documentation](https://cloudcustodian.io/docs/)\
[Terraform Documentation](https://www.terraform.io/docs)
