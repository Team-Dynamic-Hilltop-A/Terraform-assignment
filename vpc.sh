     #!/bin/bash
     #
     ## Variables
     #VPC_CIDR_BLOCK="10.0.0.0/16"
     #SUBNET_CIDR_BLOCK="10.0.1.0/24"
     #REGION="us-east-1"
     #
     ## Create VPC
     #echo "Creating VPC..."
     #VPC_ID=$(aws ec2 create-vpc --cidr-block $VPC_CIDR_BLOCK --region $REGION --query 'Vpc.VpcId' --output text)
     #echo "VPC created with ID: $VPC_ID"
     #
     ## Tag the VPC
     #aws ec2 create-tags --resources $VPC_ID --tags Key=Name,Value=MyVPC --region $REGION
     #echo "Tagged VPC with Name=MyVPC"
     #
     ## Enable DNS support and DNS hostname
     #aws ec2 modify-vpc-attribute --vpc-id $VPC_ID --enable-dns-support "{\"Value\":true}" --region $REGION
     #aws ec2 modify-vpc-attribute --vpc-id $VPC_ID --enable-dns-hostnames "{\"Value\":true}" --region $REGION
     #echo "Enabled DNS support and DNS hostnames for the VPC"
     #
     ## Create Subnet
     #echo "Creating Subnet..."
     #SUBNET_ID=$(aws ec2 create-subnet --vpc-id $VPC_ID --cidr-block $SUBNET_CIDR_BLOCK --region $REGION --query 'Subnet.SubnetId' --output text)
     #echo "Subnet created with ID: $SUBNET_ID"
     #
     ## Tag the Subnet
     #aws ec2 create-tags --resources $SUBNET_ID --tags Key=Name,Value=MySubnet --region $REGION
     #echo "Tagged Subnet with Name=MySubnet"
     #
     ## Create Internet Gateway
     #echo "Creating Internet Gateway..."
     #IGW_ID=$(aws ec2 create-internet-gateway --region $REGION --query 'InternetGateway.InternetGatewayId' --output text)
     #echo "Internet Gateway created with ID: $IGW_ID"
     #
     ## Attach Internet Gateway to the VPC
     #aws ec2 attach-internet-gateway --vpc-id $VPC_ID --internet-gateway-id $IGW_ID --region $REGION
     #echo "Attached Internet Gateway to the VPC"
     #
     ## Create Route Table
     #echo "Creating Route Table..."
     #ROUTE_TABLE_ID=$(aws ec2 create-route-table --vpc-id $VPC_ID --region $REGION --query 'RouteTable.RouteTableId' --output text)
     #echo "Route Table created with ID: $ROUTE_TABLE_ID"
     #
     ## Create Route to Internet Gateway
     #aws ec2 create-route --route-table-id $ROUTE_TABLE_ID --destination-cidr-block 0.0.0.0/0 --gateway-id $IGW_ID --region $REGION
     #echo "Route to Internet Gateway created"
     #
     ## Associate Route Table with Subnet
     #aws ec2 associate-route-table --subnet-id $SUBNET_ID --route-table-id $ROUTE_TABLE_ID --region $REGION
     #echo "Associated Route Table with Subnet"
     #
     #echo "VPC setup completed successfully"
