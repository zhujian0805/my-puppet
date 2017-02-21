# This is a test class
#See the difference with/without inherits
#class test01::mymod inherits test01 { 
class test01::mymod {
  notify { "This is test01::mymod": }
  notice ('hello world!!!')
}
