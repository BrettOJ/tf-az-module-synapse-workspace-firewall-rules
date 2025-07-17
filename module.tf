resource "azurerm_synapse_firewall_rule" "fw_rule" {
  for_each = var.firewall_rules

  name                 = each.key
  synapse_workspace_id = var.synapse_workspace_id
  start_ip_address     = each.value.start_ip_address
  end_ip_address       = each.value.end_ip_address
}
