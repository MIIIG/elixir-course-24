defmodule Processes do
  @moduledoc """
  Documentation for `Processes`.
  """

  @doc """
  $ NODES=5 iex -S mix
  стартует 5 нод, к которым можно прицепиться
  как в примере ниже

  ## Examples

      iex> Node.connect(:"node1@localhost")
      :true

  """

  def start_link do
    nodes = Application.get_env(:processes, Processes)[:nodes]
    Enum.each(nodes, fn i -> start_node(i) end)
  end

  defp start_node(%{name: name, type: type}) do
    case type do
      :sname -> Node.start(:"#{name}", :shortnames)
      :name -> Node.start(:"#{name}")
    end
  end
end
