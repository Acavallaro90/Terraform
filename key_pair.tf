# A Key Pair is a security credential used to authenticate and establish a secure connection between a user's computer and an EC2 instance, allowing users to securely access and manage their instances using SSH or RDP protocols.
# The command to create a Key Pair using the AWS CLI
# aws ec2 create-key-pair --key-name [name of the key pair] --query 'KeyMaterial' --output text > key-pair.pem
# The command to retrieve the public key for the resource declaration
# aws ec2 describe-key-pairs --key-names [name of the key pair] --include-public-key --output text > key-pair.pub
