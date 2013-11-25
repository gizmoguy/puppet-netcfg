  #
class netcfg(
  $interfaces = $netcfg::params::interfaces,
) inherits netcfg::params {

  validate_hash($interfaces)
  create_resources('network_config', $interfaces)

}
