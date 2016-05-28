#!/bin/bash - 

# Testign the test01-mod01.pp which doesn't has init.pp
puppet apply --modulepath modules test01-mod01.pp
echo
echo

# Testing the 'if defined' function
puppet apply --modulepath modules test01-test-if-defined.pp
echo
echo

# Testing the define function
puppet apply --modulepath modules test01-test-defined-function.pp

# Dump all facts to file
sudo puppet apply debugging/dump_all_facts_file.pp
