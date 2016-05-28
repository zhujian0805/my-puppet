### LINK
### http://www.puppetcookbook.com/posts/see-all-client-variables.html
class all_facts_file {

  file { '/tmp/facts.yaml':
      content => inline_template('<%= scope.to_hash.reject { |k,v| !( k.is_a?(String) &&
      v.is_a?(String) ) }.to_yaml %>'),
        }

}

class { "all_facts_file":
}
