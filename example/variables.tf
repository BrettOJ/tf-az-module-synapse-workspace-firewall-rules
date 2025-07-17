variable "synapse_workspace_id" {
  description = "The ID of the Synapse Workspace on which to create the Firewall Rules."
  type        = string
}

variable "firewall_rules" {
  description = "Map of Synapse firewall rules to create"
  type = map(object({
    start_ip_address = string
    end_ip_address   = string
  }))
}