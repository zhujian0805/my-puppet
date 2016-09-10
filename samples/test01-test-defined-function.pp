define tttt( $something = "Testing define" ) {
    notice ("This is the testing for self-define resource!!!")
    notice ( $something )
}

tttt { 'testing':
    something => "This is the testing string for testing define",
}
