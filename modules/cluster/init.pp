class { 'corosync':
  log_stderr        => false,
  cluster_name      => 'mycluster',
  log_function_name => true,
  syslog_priority   => 'debug',
  bind_address   => $::ipaddress_enp1s0,
  debug             => true,
}

corosync::service { 'pacemaker':
  version => '0',
}

