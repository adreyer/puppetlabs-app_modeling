function app_modeling::create_node_order(
  String $name,
  Array $order,
){
  $nodes = $order.reduce({}) |$nodes, $layer| {
    app_modeling::wrap_array($layer).reduce($nodes) |$nodes, $n| {
      # TODO: fail instead of overwriting here!
      $nodes + { Node[$n] => App_modeling::Dependency["${name}-${n}"] }
    }
  }

  app_modeling::node_order{ $name:
    order => $order,
    nodes => $nodes,
  }
}
