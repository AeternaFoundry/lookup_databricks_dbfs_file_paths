data "databricks_dbfs_file_paths" "dbfs_file_paths_lookup" {
  for_each = var.dbfs_file_paths_lookup

  path      = each.value.path
  recursive = each.value.recursive

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

