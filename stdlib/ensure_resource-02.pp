class cuser {
    ensure_resource('user', 'dan', {'ensure' => 'present' , uid => '666' })
}

include stdlib
class { "cuser": 

}
