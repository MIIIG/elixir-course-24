defmodule Processes do
  @moduledoc """
  Documentation for `Processes`.
  """

  use GenServer

  # Client

  @spec start_link() :: GenServer.on_start()
  def start_link(), do: GenServer.start_link(__MODULE__, name: __MODULE__)

  @spec ping(pid()) :: tuple()
  def ping(pid), do: GenServer.call(pid, :ping)

  # Server (callbacks)

  @impl true
  def init(state), do: {:ok, state}

  @impl true
  def handle_call(:ping, _from, _state) do
    {:reply, {:pong, node()}}
  end
end
