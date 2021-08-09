
# Repositorio de estudos para a certifiação de Terraform da Hashicorp.

## Review Guide

Here is a direct mapping of each HashiCorp Certified: Terraform Associate exam objective to where it is covered in HashiCorp's documentation and training. This provides experienced exam candidates a place to review just the objectives they need extra help with before taking the exam.

|       |                                                              |                                                              |                                                              |
| :---- | :----------------------------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| **1** | **Understand Infrastructure as Code (IaC) concepts**         | **Documentation**                                            | **Tutorial**                                                 |
| 1a    | Explain what IaC is                                          | [Infrastructure as Code](https://www.terraform.io/intro/index.html#infrastructure-as-code)  [Infrastructure as Code in a Private or Public Cloud](https://www.hashicorp.com/blog/infrastructure-as-code-in-a-private-or-public-cloud) | [Introduction to Infrastructure as Code with Terraform](https://learn.hashicorp.com/tutorials/terraform/infrastructure-as-code) |
| 1b    | Describe advantages of IaC patterns                          | [Infrastructure as code video](https://www.hashicorp.com/resources/what-is-infrastructure-as-code)  [Infrastructure as Code in a Private or Public Cloud](https://www.hashicorp.com/blog/infrastructure-as-code-in-a-private-or-public-cloud) | [Introduction to Infrastructure as Code with Terraform](https://learn.hashicorp.com/tutorials/terraform/infrastructure-as-code) |
| **2** | **Understand Terraform's purpose (vs other IaC)**            | **Documentation**                                            | **Tutorial**                                                 |
| 2a    | Explain multi-cloud and provider-agnostic benefits           | [Multi-Cloud Deployment](https://www.terraform.io/intro/use-cases.html#multi-cloud-deployment) |                                                              |
| 2b    | Explain the benefits of state                                | [Purpose of Terraform State](https://www.terraform.io/docs/language/state/purpose.html) | [Manage Resources in Terraform State](https://learn.hashicorp.com/tutorials/terraform/state-cli) |
| **3** | **Understand Terraform basics**                              | **Documentation**                                            | **Tutorial**                                                 |
| 3a    | Handle Terraform and provider installation and versioning    | [Providers](https://www.terraform.io/docs/language/providers/configuration.html)  [Terraform Settings](https://www.terraform.io/docs/language/settings/index.html) | [Installing Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)  [Lock and Upgrade Provider Versions](https://learn.hashicorp.com/tutorials/terraform/provider-versioning) |
| 3b    | Describe plug-in based architecture                          |                                                              | [Perform CRUD Operations with Providers](https://learn.hashicorp.com/tutorials/terraform/provider-use) |
| 3c    | Demonstrate using multiple providers                         |                                                              | [Lock and Upgrade Provider Versions](https://learn.hashicorp.com/tutorials/terraform/provider-versioning) |
| 3d    | Describe how Terraform finds and fetches providers           | [Providers](https://www.terraform.io/docs/language/providers/configuration.html) | [Build Infrastructure– Providers](https://learn.hashicorp.com/tutorials/terraform/provider-use) |
| 3e    | Explain when to use and not use provisioners and when to use local-exec or remote-exec | [Provisioners are a Last Resort](https://www.terraform.io/docs/language/resources/provisioners/syntax.html#provisioners-are-a-last-resort) | [Provision Infrastructure with Cloud-Init](https://learn.hashicorp.com/tutorials/terraform/cloud-init)  [Provision Infrastructure with Packer](https://learn.hashicorp.com/tutorials/terraform/packer) |
| **4** | **Use the Terraform CLI (outside of core workflow)**         | **Documentation**                                            | **Tutorial**                                                 |
| 4a    | Given a scenario: choose when to use `terraform fmt` to format code | [Command: fmt](https://www.terraform.io/docs/cli/commands/fmt.html) | [Troubleshoot Terraform](https://learn.hashicorp.com/tutorials/terraform/troubleshooting-workflow#format-the-configuration) |
| 4b    | Given a scenario: choose when to use `terraform taint` to taint Terraform resources | [Command: taint](https://www.terraform.io/docs/cli/commands/taint.html) | [Manage Resources in Terraform State](https://learn.hashicorp.com/tutorials/terraform/state-cli#replace-a-resource-with-cli) |
| 4c    | Given a scenario: choose when to use `terraform import` to import existing infrastructure into your Terraform state | [Command: import](https://www.terraform.io/docs/cli/commands/import.html) | [Import Terraform Configuration](https://learn.hashicorp.com/tutorials/terraform/state-import) |
| 4d    | Given a scenario: choose when to use `terraform workspace` to create workspaces | [Workspaces](https://www.terraform.io/docs/language/state/workspaces.html) | [Refactor Monolithic Terraform Configuration](https://learn.hashicorp.com/tutorials/terraform/organize-configuration#create-a-dev-workspace) |
| 4e    | Given a scenario: choose when to use `terraform state` to view Terraform state | [State Command](https://www.terraform.io/docs/cli/commands/state/index.html) | [Manage Resources in Terraform State](https://learn.hashicorp.com/tutorials/terraform/state-cli) |
| 4f    | Given a scenario: choose when to enable verbose logging and what the outcome/value is | [Debugging Terraform](https://www.terraform.io/docs/internals/debugging.html) | [Troubleshoot Terraform](https://learn.hashicorp.com/tutorials/terraform/troubleshooting-workflow#enable-terraform-logging) |
| **5** | **Interact with Terraform modules**                          | **Documentation**                                            | **Tutorial**                                                 |
| 5a    | Contrast module source options                               | [Finding and Using Modules](https://www.terraform.io/docs/registry/modules/use.html) | [Modules](https://learn.hashicorp.com/tutorials/terraform/module) |
| 5b    | Interact with module inputs and outputs                      | [Accessing Module Output Values](https://www.terraform.io/docs/language/modules/syntax.html#accessing-module-output-values) | [Modules](https://learn.hashicorp.com/tutorials/terraform/module-use) |
| 5c    | Describe variable scope within modules/child modules         | [Input Variables](https://www.terraform.io/docs/language/values/variables.html)  [Calling a Child Module](https://www.terraform.io/docs/language/modules/syntax.html) |                                                              |
| 5d    | Discover modules from the public Terraform Module Registry   | [Finding and Using Modules](https://www.terraform.io/docs/registry/modules/use.html) | [Modules](https://learn.hashicorp.com/tutorials/terraform/module-use#use-the-terraform-registry) |
| 5e    | Defining module version                                      | [Module Versions](https://www.terraform.io/docs/language/modules/syntax.html#version) | [Modules](https://learn.hashicorp.com/tutorials/terraform/module-use) |
| **6** | **Navigate Terraform workflow**                              | **Documentation**                                            | **Tutorial**                                                 |
| 6a    | Describe Terraform workflow ( Write -> Plan -> Create )      | [The Core Terraform Workflow](https://www.terraform.io/guides/core-workflow.html) | [Build Infrastructure](https://learn.hashicorp.com/tutorials/terraform/aws-build) |
| 6b    | Initialize a Terraform working directory (`terraform init`)  | [Command: init](https://www.terraform.io/docs/cli/commands/init.html) | [Build Infrastructure– Initialization](https://learn.hashicorp.com/tutorials/terraform/aws-build#initialize-the-directory) |
| 6c    | Validate a Terraform configuration (`terraform validate`)    | [Command: validate](https://www.terraform.io/docs/cli/commands/validate.html) | [Troubleshoot Terraform](https://learn.hashicorp.com/tutorials/terraform/troubleshooting-workflow#validate-your-configuration) |
| 6d    | Generate and review an execution plan for Terraform (`terraform plan`) | [Command: plan](https://www.terraform.io/docs/cli/commands/plan.html) |                                                              |
| 6e    | Execute changes to infrastructure with Terraform (`terraform apply`) | [Command: apply](https://www.terraform.io/docs/cli/commands/apply.html) | [Build Infrastructure– Apply Changes](https://learn.hashicorp.com/tutorials/terraform/aws-build#create-infrastructure) |
| 6f    | Destroy Terraform managed infrastructure (`terraform destroy`) | [Command: destroy](https://www.terraform.io/docs/cli/commands/destroy.html) | [Destroy Infrastructure](https://learn.hashicorp.com/tutorials/terraform/aws-destroy) |
| **7** | **Implement and maintain state**                             | **Documentation**                                            | **Tutorial**                                                 |
| 7a    | Describe default local backend                               | [Backends](https://www.terraform.io/docs/language/settings/backends/index.html)  [Local](https://www.terraform.io/docs/language/settings/backends/local.html) | [Migrate State to Terraform Cloud](https://learn.hashicorp.com/tutorials/terraform/cloud-migrate#set-up-the-remote-backend) |
| 7b    | Outline state locking                                        | [State Locking](https://www.terraform.io/docs/language/state/locking.html) |                                                              |
| 7c    | Handle backend authentication methods                        | [Backend Types](https://www.terraform.io/docs/language/settings/backends/index.html) | [Login to Terraform Cloud from the CLI](https://learn.hashicorp.com/tutorials/terraform/cloud-login) |
| 7d    | Describe remote state storage mechanisms and supported standard backends | [Backend Types](https://www.terraform.io/docs/language/settings/backends/index.html) | [Remote State Storage](https://learn.hashicorp.com/tutorials/terraform/aws-remote) |
| 7e    | Describe effect of Terraform refresh on state                | [Command: refresh](https://www.terraform.io/docs/cli/commands/refresh.html) | [Manage Resource Drift](https://learn.hashicorp.com/tutorials/terraform/resource-drift)  [Use Refresh-Only Mode to Sync Terraform State](https://learn.hashicorp.com/tutorials/terraform/refresh) |
| 7f    | Describe backend block in configuration and best practices for partial configurations | [Backend Configuration](https://www.terraform.io/docs/language/settings/backends/configuration.html) | [Remote State Storage](https://learn.hashicorp.com/tutorials/terraform/aws-remote) |
| 7g    | Understand secret management in state files                  | [Sensitive Data in State](https://www.terraform.io/docs/language/state/sensitive-data.html) | [Protect Sensitive Input Variables](https://learn.hashicorp.com/tutorials/terraform/sensitive-variables#sensitive-values-in-state) |
| **8** | **Read, generate, and modify configuration**                 | **Documentation**                                            | **Tutorial**                                                 |
| 8a    | Demonstrate use of variables and outputs                     | [Input Variables](https://www.terraform.io/docs/language/values/variables.html)  [Output Values](https://www.terraform.io/docs/language/values/outputs.html) | [Customize Terraform Configuration with Variables](https://learn.hashicorp.com/tutorials/terraform/variables)  [Output Data from Terraform](https://learn.hashicorp.com/tutorials/terraform/outputs) |
| 8b    | Describe secure secret injection best practice               | [Vault Provider for Terraform](https://www.terraform.io/docs/providers/vault/index.html) | [Inject secrets into Terraform using the Vault provider](https://learn.hashicorp.com/tutorials/terraform/secrets-vault) |
| 8c    | Understand the use of collection and structural types        | [Complex Types](https://www.terraform.io/docs/language/expressions/type-constraints.html#complex-types) | [Customize Terraform Configuration with Variables](https://learn.hashicorp.com/tutorials/terraform/variables) |
| 8d    | Create and differentiate resource and data configuration     | [Resources](https://www.terraform.io/docs/language/resources/index.html)  [Data Sources](https://www.terraform.io/docs/language/data-sources/index.html) | [Query Data Sources](https://learn.hashicorp.com/tutorials/terraform/data-sources) |
| 8e    | Use resource addressing and resource parameters to connect resources together | [Resource Addressing](https://www.terraform.io/docs/cli/state/resource-addressing.html)  [References to Named Values](https://www.terraform.io/docs/language/expressions/references.html) | [Create Resource Dependencies](https://learn.hashicorp.com/tutorials/terraform/dependencies) |
| 8f    | Use Terraform built-in functions to write configuration      | [Built-in Functions](https://www.terraform.io/docs/language/functions/index.html) | [Perform Dynamic Operations with Functions](https://learn.hashicorp.com/tutorials/terraform/functions)  [Create Dynamic Expressions](https://learn.hashicorp.com/tutorials/terraform/expressions) |
| 8g    | Configure resource using a dynamic block                     | [Dynamic Blocks](https://www.terraform.io/docs/language/expressions/dynamic-blocks.html) |                                                              |
| 8h    | Describe built-in dependency management (order of execution based) | [Resource Graph](https://www.terraform.io/docs/internals/graph.html) | [Create Resource Dependencies](https://learn.hashicorp.com/tutorials/terraform/dependencies) |
| **9** | **Understand Terraform Cloud and Enterprise capabilities**   | **Documentation**                                            | **Resource**                                                 |
| 9a    | Describe the benefits of Sentinel, registry, and workspaces  | [Sentinel](https://www.terraform.io/docs/cloud/sentinel/index.html)  [Module Registry](https://www.terraform.io/docs/cloud/registry/index.html)  [Workspaces](https://www.terraform.io/docs/cloud/workspaces/index.html) | [Install the Sentinel CLI](https://learn.hashicorp.com/tutorials/terraform/sentinel-install)  [Use Modules from the Registry](https://learn.hashicorp.com/tutorials/terraform/module-use#use-the-terraform-registry)  [Workspaces](https://www.hashicorp.com/resources/terraform-enterprise-understanding-workspaces-and-modules) |
| 9b    | Differentiate OSS and Terraform Cloud workspaces             | [CLI Workspaces](https://www.terraform.io/docs/language/state/workspaces.html)  [Enterprise/Cloud Workspaces](https://www.terraform.io/docs/cloud/workspaces/index.html) |                                                              |
| 9c    | Summarize features of Terraform Cloud                        | [Terraform Cloud](https://www.terraform.io/docs/cloud/index.html)  [The UI- and VCS-driven Run Workflow](https://www.terraform.io/docs/cloud/run/ui.html) | [Compare Packages](https://www.hashicorp.com/products/terraform/pricing) |