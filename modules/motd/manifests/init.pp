class motd {
       include concat::setup
       $motdfile = "/etc/motd.tail"

       concat{$motdfile:
               owner => root,
               group => root,
               mode => 644
       }

       concat::fragment{"motd_header":
               target => $motdfile,
               content => "\nPuppet modules: ",
               order => 10,
       }

       concat::fragment{"motd_footer":
               target => $motdfile,
               content => "\n\n",
               order => 90,
       }
}

# used by other modules to register themselves in the motd
define motd::register($content="", $order=20) {
   if $content == "" {
      $body = $name
   } else {
      $body = $content
   }

   concat::fragment{"motd_fragment_$name":
      target  => "/etc/motd.tail",
      content => "$body ",
      order => $order
   }
}