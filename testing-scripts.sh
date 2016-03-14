#!/bin/bash - 

# Testign the test01-mod01.pp which doesn't has init.pp
puppet apply --modulepath modules test01-mod01.pp
