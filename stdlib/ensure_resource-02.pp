class cuser {
    ensure_resource('user', 'dan', {'ensure' => 'present' , gid => '146' })
}

include stdlib
class { "cuser": 

}
