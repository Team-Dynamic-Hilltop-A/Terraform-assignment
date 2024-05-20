# Variable Output

In Terraform, variable outputs are a way to define and expose values from a module or configuration for use in other parts of the Terraform codebase. Outputs allow you to share information between different modules, configurations, or even outside of Terraform

## Common use-cases of local variables

- Sharing resource information: Outputs can be used to expose important information about resources created within a module or configuration. This can include resource IDs, endpoint URLs, IP addresses, or any other relevant data that needs to be consumed by other parts of the infrastructure.

- Dependency management: Outputs can be used to define dependencies between modules. By specifying outputs in one module and consuming them as inputs in another module, you can establish a clear dependency relationship and ensure that resources are provisioned in the correct order.

- Configuration verification: Outputs can be used to provide feedback or verification information about the infrastructure being provisioned. For example, you can output the DNS name of a load balancer to verify that it has been successfully created and is accessible.

- External integration: Outputs can be used to pass information to external systems or tools that need to interact with the provisioned infrastructure. This can include passing configuration details to a deployment tool, sending notifications, or triggering additional automation.

### Example usage of `outputs`in a `resource` block 

Here's an example of how you can use `outputs` for a resource block in Terraform

- First you define the `resource` in your configuration file. For example, to create an `ec2-instance`

```sh
resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  // Resource configuration
}

```
---

- To define an `output` attribute such as `instance_id`.

```sh
output "instance_id" {
  value = aws_instance.example.id
}

```
---

- To define an `output` attribute such as `public_ip`.

```sh
output "public_ip" {
  value = aws_instance.example.public_ip
}
```
---

- To define an `output` attribute such as `private_ip`.

```sh
output "private_ip" {
  value = aws_instance.example.private_ip
}
```
---

### Example usage of `outputs`in a `module` block

- First you define the `module` in your configuration file. For example, to create an `ec2-instance` from a module,

```sh
module "example" {
  source = "./example-module"

  // Module configuration
}

```
---

- To define an `output` attribute such as `instance_id`.

```sh
output "resource_ids" {
  value = module.example.resource_ids
}

```
---