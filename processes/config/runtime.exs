import Config
import Dotenvy

source!([".env", System.get_env()])

# Конфигурация для N нод
nodes_count = env!("NODES", :integer)

nodes =
  Enum.map(1..nodes_count, fn i ->
    %{name: :"node#{i}@127.0.0.1", type: :name}
  end)

# Добавить сгенерированные ноды в конфигурационный файл
File.write!(
  "config/generated_config.exs",
  "import Config\n\nconfig :processes, Processes, nodes: #{inspect(nodes)}"
)

config :processes, :nodes, env!("NODES", :integer) || 1
