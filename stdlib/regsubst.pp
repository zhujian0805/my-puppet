define testregsubst( $something = "site1-admin02" ) {
    notice ("This is the testing for regsubst!!!")
    #$nodeid = regsubst($something, 'sljflsd', '\\1')
    $nodeid = regsubst(split($something, '-')[-1], '^\w+?(\d\d)$', '\\1')
    notice ( $nodeid )
}

testregsubst { 'kkk1-aaaa02':
    something => "kkk1-addbcd02",
}

testregsubst { 'kkk2-aaaa02':
    something => "kkk1-addfj01",
}

testregsubst { 'kkk3-aaaa02':
    something => "${::hostname}",
}
