defmodule Calc do
  @moduledoc """
  Documentation for `Calc`.
  """

  @doc """
  ## Addition

      iex> Calc.add(2, 2)
      4
  """
  @spec add(integer(), integer()) :: integer()
  def add(x, y), do: x + y

  @doc """
  ## Subtraction

    iex> Calc.sub(4, 2)
    2
  """

  @spec sub(integer(), integer()) :: integer()
  def sub(x, y), do: x - y

  @doc """
  ## Multuply

    iex> Calc.multi(3, 5)
    15
  """

  @spec multi(integer(), integer()) :: integer()
  def multi(x, y), do: x * y

  @doc """
  ## Division
  
    iex> Calc.div(15, 3)
    5.0
  """

  @spec div(integer(), integer()) :: float()
  def div(x, y), do: x / y
end
