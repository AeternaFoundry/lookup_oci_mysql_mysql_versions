output "mysql_mysql_versions_lookup_id" {
  description = "Map of id values across all mysql_mysql_versions_lookup, keyed the same as var.mysql_mysql_versions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_mysql_mysql_versions.mysql_mysql_versions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mysql_mysql_versions_lookup_compartment_id" {
  description = "Map of compartment_id values across all mysql_mysql_versions_lookup, keyed the same as var.mysql_mysql_versions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_mysql_mysql_versions.mysql_mysql_versions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "mysql_mysql_versions_lookup_filter" {
  description = "Map of filter values across all mysql_mysql_versions_lookup, keyed the same as var.mysql_mysql_versions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_mysql_mysql_versions.mysql_mysql_versions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "mysql_mysql_versions_lookup_versions" {
  description = "Map of versions values across all mysql_mysql_versions_lookup, keyed the same as var.mysql_mysql_versions_lookup except keys with no versions are omitted"
  value       = { for k, v in data.oci_mysql_mysql_versions.mysql_mysql_versions_lookup : k => v.versions if v.versions != null && length(v.versions) > 0 }
}

