# Processes

Запускаем в консоли родительскую ноду:

```bash
$ iex --name node@localhost -S mix
```

Запускаем в консоли вторую ноду:

```bash
$ iex --name node1@127.0.0.1 -S mix
```

Чтобы постучаться на нужную ноду, надо выполнить в консоли:

```bash
$ Node.spawn(:"node1@127.0.0.1", fn -> Processes.ping(node()) end)
$ #PID<22148.213.0>
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `processes` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:processes, "~> 0.1.0"}
  ]
end
```
