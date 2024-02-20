import Config

config :processes, Processes,
  nodes: [
    %{name: :"node1@127.0.0.1", type: :name},
    %{name: :"node2@127.0.0.1", type: :name},
    %{name: :"node3@127.0.0.1", type: :name}
  ]
