class cuser {
    user { 'dan':
      ensure => present,
    }
    ensure_resource('user', 'james', {'ensure' => 'present' , uid => '766' })
    ensure_resource('user', 'test01', {'ensure' => 'present' , uid => '768' })
}

#include stdlib
class { "cuser": 

}
