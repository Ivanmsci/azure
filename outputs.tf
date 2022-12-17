output "connection_script" {
  value = templatefile("${var.host_os}-ssh-script.tpl", {
         hostname = azurerm_network_interface.mtc-nic.public_ip_address,
         user = "adminuser",
         identityfile = "~/.ssh/id_rsa.pub"
      })

}