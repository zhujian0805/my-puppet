class test01 {
	    if defined( "test01::fucking") {
	            notify {'oh yes, test01::fucking is defined':}
                include test01::fucking
	    }
}

class test01::fucking {
    notify { "name is ----> $name": }
    notify {'oh yes, its test01::fucking included!!':}
}

include test01
