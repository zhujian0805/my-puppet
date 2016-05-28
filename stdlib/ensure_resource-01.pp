class ipkg {
    ensure_packages(['corosync'], {'ensure' => 'present'})
    #ensure_packages(['corosync'], {'ensure' => 'absent'})
}

include stdlib
class { "ipkg": 

}
