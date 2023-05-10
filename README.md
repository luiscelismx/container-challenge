## Container Challenge

Solution overview

The reference solution uses a container-based nodeJS application with a DynamoDB table as the data store. Along with Amazon ECS, the solution uses a combination of Amazon Elastic Container Registry (Amazon ECR) for container registry and Docker to create the application image, AWS Virtual Private Cloud (VPC) manages the network setup and Amazon Application Load Balancer (ALB) routes external traffic to the Amazon ECS service, and Amazon CloudWatch Logs to manage logs, monitoring and alerting. 

The high-level architecture of the reference solution is shown below.

![Diagram](https://github.com/luiscelismx/container-challenge/blob/main/Architecture-Diagram.jpeg?raw=true)


### Sections
I divide the solutions in 3 main topics:

| Topic | Description |
| ---------------- | -------------------------------------------------------- |
| Application | Web appliction used for the challenge. |
| Docker | Image creation with the application, and dependencies. |
| Terraform | Code to provision AWS Infrastructure. |



#### Application

The sample application is a simple web application for storing notable quotations. It's written as a node.js application and uses the Express web framework and the AWS SDK. Soccer Quotes are stored in a simple DynamoDB table called `quotes`.

The application has four endpoints:

| Endpoint | Description |
| --- | --- |
| PUT /quotes | Create a new quotation |
| GET /quotes/:quote_id | Show a specific quotation |
| GET /quotes | Show all quotations |
| GET / | Show status information |

The application contains a simple debbuging capability (request ip, request method, and request path) to present some information in AWS Cloudwatch.

URL: http://xxx-load-balancer-2141945483.us-west-1.elb.amazonaws.com/


#### Docker
To assamble the application image an alpine with nodeJS image were used (node:16-alpine3.14), and uploaded to a private Amazon ECR repository.


#### Terraform
To provision the cloud architecture. All the resource were created in us-west-1 region.
