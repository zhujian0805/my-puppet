class cuser {
    ensure_resource('user', 'dan', {'ensure' => 'present' , uid => '766' })
}

#include stdlib
class { "cuser": 

}
