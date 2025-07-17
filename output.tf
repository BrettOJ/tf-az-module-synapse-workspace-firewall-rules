output "firewall_rule_ids" {
  description = "Map of Synapse firewall rule resource IDs"
  value = {
    for key, rule in azurerm_synapse_firewall_rule.this :
    key => rule.id
  }
}
