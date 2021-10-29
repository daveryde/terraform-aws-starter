# Terraform - AWS VPC, Internet Gateway, Route Table, Subnet, Security Group, Network Interface, Elastic IP, and EC2 Instance 
<p>
  <p>
    A complete basic terraform configuration file that will create the required cloud infrastructure resources to support an EC2 t2.micro instance running Amazon Linux 2 AMI which renders a simple html page upon visiting the assigned elastic IP.   
  </p>

  <p>
    The minimum AWS cloud infrastructure requirements for this are listed as follows:
  </p>

  - [x] Create VPC
  - [x] Create Internet Gateway
  - [x] Create Custom Route Table
  - [x] Create Subnet
  - [x] Associate Subnet with Route Table
  - [x] Create Security Group to allow ports <code>22, 80, 443</code>
  - [x] Create Network Interface with IP in created Subnet range
  - [x] Assign Elastic IP to the Network Interface
  - [x] Create Amazon Linux 2 AMI EC2 instance configured to cloud resources

  <p>Additional ideas to implement include:</p>

  - [x] Terraform variables
  - [x] Terraform outputs
  - [x] Terraform and provider versioning (best practices)
  - [ ] Elastic Load Balancer
  - [ ] Elastic Container Services
  - [ ] Fargate Instances

### Specification

1. Learn terraform to create cloud resources to support AWS server instances
2. Successfully implement terraform to create required clould resources and server instance


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these steps.

### Installation

1. Clone the repo
```sh
git clone https://github.com/daveryde/terraform-aws-starter.git
```
2. In main.tf, fill in your own region, AWS access, and secret keys to create resources using your AWS account  
```sh
provider "aws" {
    region = "<region>"
    access_key = "<access_key>"
    secret_key = "<secret_key>"
}
```
3. In the project directory, use terraform to create the resources in your AWS account:
```sh
terraform apply
```
4. Copy and paste your assigned elastic IP into a browser to view the html page generated once all cloud resources have been created to support this server instance.

## Terraform Resources

- AWS VPC [aws_vpc]
- AWS Internet Gateway [aws_internet_gateway]
- AWS Route Table [aws_route_table]
- AWS Subnet [aws_subnet]
- AWS Route Table Association [aws_route_table_association]
- AWS Security Group [aws_security_group]
- AWS Network Interface [aws_network_interface]
- AWS Elastic IP [aws_eip]
- AWS Instance [aws_instance]


<!-- MARKDOWN LINKS & IMAGES -->
[aws_vpc]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
[aws_internet_gateway]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
[aws_route_table]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
[aws_subnet]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
[aws_route_table_association]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association
[aws_security_group]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group
[aws_network_interface]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface
[aws_eip]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip
[aws_instance]: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance