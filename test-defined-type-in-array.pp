define tttt( $something = "Testing define" ) {
    notice ("This is the testing for self-define resource!!!")
    notice ( $name )
}

$more = [ 'one', 'two', 'three' ]

tttt { $more: }
