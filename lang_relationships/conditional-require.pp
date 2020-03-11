## The thing after => can be any resources
class test {
    $rootgroup = $facts['os']['family'] ? {
    'Solaris'           => 'wheel',
    /(Darwin|FreeBSD)/  => 'wheel',
    default             => File['/var/tmp/conditional_require_pp.log'],
    }

    file { '/var/tmp/conditional_require_pp.log':
        ensure => 'file',
        mode   => '1777',
    }

}

include test
