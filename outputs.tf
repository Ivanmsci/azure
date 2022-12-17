output "mtc_ip_address" {

    value = azurerm_linux_virtual_machine.mtc-vm.public_ip_address
}


output "connection_script" {

     value = templatefile("${var.host_os}-ssh-script.tpl", {
         hostname = azurerm_linux_virtual_machine.mtc-vm.public_ip_address,
         user = "adminuser",
         identityfile = "~/.ssh/id_rsa.pub"
      })
}