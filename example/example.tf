module "synapse_firewall_rules" {
  source               = "../"
  synapse_workspace_id = var.synapse_workspace_id

  firewall_rules = {
    "AllowClient1" = {
      start_ip_address = "10.0.0.1"
      end_ip_address   = "10.0.0.1"
    },
    "AllowCIDRBlock" = {
      start_ip_address = "192.168.1.0"
      end_ip_address   = "192.168.1.255"
    }
  }
}
