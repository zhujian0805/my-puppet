class cuser {
    user { 'dan':
      ensure => present,
    }
    ensure_resource('user', 'james', {'ensure' => 'present' , uid => '766' })
}

#include stdlib
class { "cuser": 

}
