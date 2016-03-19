class directories {

  # create a directory      
  file { '/etc/site-conf':
    ensure => 'directory',
  }

  # a fuller example, including permissions and ownership
  file { '/var/log/admin-app-log':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0750',
  }

  # this example creates a file
  file { '/etc/site-conf01':
    ensure => 'present',
  }
}

class { "directories": 

}
