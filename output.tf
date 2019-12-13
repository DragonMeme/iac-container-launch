output "server_url" {
    value = azurerm_container_registry.test.login_server
}

output "username" {
    value = azurerm_container_registry.test.admin_username
}

output "password" {
    value = azurerm_container_registry.test.admin_password
    sensitive = true
}

# Since prints a long string, make sensitive
output "certificate" {
    value = azurerm_kubernetes_cluster.test.kube_config.0.client_certificate
    sensitive = true
}

# Since prints a long string, make sensitive
output "kube_config" {
    value = azurerm_kubernetes_cluster.test.kube_config_raw
    sensitive = true
}