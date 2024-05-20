# Terraform Workspaces

In Terraform, workspaces are a feature that allows you to manage multiple instances of the same infrastructure in separate environments. Each workspace represents a distinct state and set of resources within a single Terraform configuration

## Major reasons for setting up a Terraform workspaces

- **Environment separation**: Workspaces enable you to manage infrastructure across different environments, such as development, staging, and production, within a single Terraform configuration. Each workspace maintains its own state, allowing you to provision and manage resources independently for each environment.

- **Resource isolation**: By using workspaces, you can avoid resource conflicts between environments. Each workspace has its own state file, ensuring that changes made in one environment do not affect resources in other environments.

- **Configuration reuse**: Workspaces allow you to reuse the same Terraform configuration across multiple environments. You can define common infrastructure components and configurations once and then create workspaces to apply those configurations to different environments, reducing duplication and ensuring consistency.

- **Testing and experimentation**: Workspaces provide a convenient way to test changes and experiment with different configurations without impacting production resources. You can create a new workspace, apply changes in an isolated environment, and validate the results before promoting the changes to a production workspace.

- **Collaboration and team workflows**: Workspaces facilitate collaboration among team members working on different aspects of the infrastructure. Each team member can work in their own workspace, making changes and testing them independently. Workspaces can be used in conjunction with version control systems to enable parallel development and facilitate code reviews.

## Major Workspace commands

### Creating a workspace
- `terraform workspace new <name>`: Creates a new workspace with the specified name. This command is used when creating a new environment or workspace

Example: ```terraform workspace new dev```

### Selecting a particular workspace

- `terraform workspace select <name>`: Switches to the specified workspace. This command is used to switch between different workspaces.

Example: ```terraform workspace select prod```

### Listing available workspaces

- `terraform workspace list:` Lists all available workspaces. This command shows the existing workspaces for the current Terraform configuration.

Example: ```terraform workspace list```

### Showing current workspace

- `terraform workspace show`: Displays the currently selected workspace. This command shows the name of the currently active workspace.

Example: ```terraform workspace show```

### Deleting a workspace

- `terraform workspace delete <name>`: Deletes the specified workspace. This command is used to remove a workspace and its associated state.

Example: ```terraform workspace delete dev```