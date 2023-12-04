#NOTE
In flask-app-deployment-provisioner, you have to modify or create your own (terraform.tfvars file), in my case that is dev.tfvars file.
Follow this lifecycle in Terraform
--> terraform init
--> terraform fmt
--> terraform validate
--> terraform plan -var-file=dev.tfvars
--> terraform apply -var-file=dev.tfvars
--> terraform destroy -var-file=dev.tfvars

---------------------------------------------

Introduction to Terraform and IaC
In this session, we'll introduce you to the fundamental concepts of Terraform and Infrastructure as Code (IaC). Learn why Terraform is crucial for managing infrastructure and how IaC streamlines provisioning.

Installing Terraform on MacOS, Linux and Windows
Get your hands dirty by installing Terraform on both MacOS, Linux and Windows. We'll guide you through the process with clear instructions and commands.

Setting up Terraform for AWS
Dive into AWS integration with Terraform. You'll learn how to set up your AWS credentials and configure the AWS provider within Terraform to start provisioning resources.

Writing Your First Terraform Code
Start writing actual Terraform code with a simple example. Learn about the basic structure of a Terraform configuration file and how to define resources using the HCL language.

Terraform Lifecycle
Understand the lifecycle of terraform. What is terraform init, plan and apply.
Understanding Providers and Resources
Deepen your knowledge of providers and resources. Explore the role of different providers for various cloud platforms and understand how resources define infrastructure components.

Variables and Outputs in Terraform
Discover the power of variables for dynamic configurations. Learn how to define, declare, and utilize variables effectively. Explore outputs to retrieve and display essential information.

Conditional Expressions and Functions
Elevate your configurations with conditional expressions, adding logic to your code. We'll introduce you to Terraform's built-in functions for tasks like string manipulation and calculations.

Debugging and Formatting Terraform Files
Master the art of debugging Terraform configurations.Plus, learn why proper formatting with terraform fmt is crucial.
Introduction to Terraform Backends
Uncover the role of Terraform backends in remote state storage. Learn why they're essential for maintaining infrastructure state and configurations.

Implementing S3 Backend for State Storage
Get hands-on experience configuring an S3 bucket as a backend for remote state storage. Understand how this setup improves collaboration and state management.

State Locking with DynamoDB
Dive into state locking and the prevention of concurrent updates. Implement state locking using DynamoDB as a backend mechanism, ensuring state consistency.
Understanding Provisioners in Terraform
Learn about provisioners, mechanisms for executing actions on resources during creation and destruction. Understand how they facilitate customization.

Remote-exec and Local-exec Provisioners
Differentiate between remote-exec and local-exec provisioners. Explore how remote-exec provisions actions on remote servers, while local-exec performs tasks locally.

Applying Provisioners at Creation and Destruction
Discover when to use provisioners during resource creation or destruction. Configure provisioners within resource blocks to execute specific actions.
