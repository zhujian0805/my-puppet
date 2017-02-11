class { 'corosync':
  authkey        => '/var/lib/puppet/ssl/certs/ca.pem',
  bind_address   => $::ipaddress,
  cluster_name   => 'mycluster',
  enable_secauth => true,
}

corosync::service { 'pacemaker':
  version => '0',
}

