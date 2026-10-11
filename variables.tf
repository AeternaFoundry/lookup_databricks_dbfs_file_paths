variable "dbfs_file_paths_lookup" {
  description = <<EOT
Map of dbfs_file_paths_lookup, attributes below
Required:
    - path
    - recursive
Optional:
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    path      = string
    recursive = bool
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

