class run {
  include run::zabbix_server
  include run::timezone

  if $openvpn == "On" {
    include run::openvpn
  }
}
