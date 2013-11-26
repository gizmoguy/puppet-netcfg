  #
class netcfg(
  $interfaces = $netcfg::params::interfaces,
  $routes     = $netcfg::params::routes,
) inherits netcfg::params {

  validate_hash($interfaces)
  create_resources('network_config', $interfaces)

  validate_hash($routes)
  create_resources('network_route', $routes)

}
