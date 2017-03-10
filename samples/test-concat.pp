class cct {
	concat { '/tmp/file':
	  ensure => present,
	}
	
	concat::fragment { 'tmpfile':
	  target  => '/tmp/file',
	  content => 'test contents',
	}
}

include cct
