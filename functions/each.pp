$data = ["routers", "servers", "workstations"]
$data.each |$item| {
 notify { $item:
   message => $item
 }
}