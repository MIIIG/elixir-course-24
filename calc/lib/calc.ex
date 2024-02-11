defmodule Calc do
  @moduledoc """
  Documentation for `Calc`.
  """

  @doc """
  ## Addition

      iex> Calc.add(2, 2)
      4

      iex> Calc.add("2", "2")
      "Bad argument!"
  """
  @spec add(integer() | float(), integer() | float()) :: integer() | float()
  def add(x, y)
      when is_integer(x) or
             is_float(x) or
             is_integer(y) or
             is_float(y) do
    x + y
  end

  def add(_x, _y), do: "Bad argument!"

  @doc """
  ## Subtraction

    iex> Calc.sub(4, 2)
    2

    iex> Calc.sub("4", "2")
    "Bad argument!"
  """

  @spec sub(integer() | float(), integer() | float()) :: integer() | float()
  def sub(x, y)
      when is_integer(x) or
             is_float(x) or
             is_integer(y) or
             is_float(y) do
    x - y
  end

  def sub(_x, _y), do: "Bad argument!"

  @doc """
  ## Multuply

    iex> Calc.multi(3, 5)
    15

    iex> Calc.multi("3", "5")
    "Bad argument!"
  """

  @spec multi(integer() | float(), integer() | float()) :: integer() | float() | :error
  def multi(x, y)
      when is_integer(x) or
             is_float(x) or
             is_integer(y) or
             is_float(y) do
    x * y
  end

  def multi(_x, _y), do: "Bad argument!"

  @doc """
  ## Division

    iex> Calc.div(15, 3)
    5.0

    iex> Calc.div(15, 0)
    "Bad argument in arithmetic expression: second parametr cant be 0"

    iex> Calc.div("15", "3")
    "Bad argument!"
  """

  @spec div(integer(), integer() | float()) :: float()
  def div(_x, y) when y == 0 do
    "Bad argument in arithmetic expression: second parametr cant be 0"
  end

  def div(x, y)
      when is_integer(x) or
             is_float(x) or
             is_integer(y) or
             is_float(y) do
    x / y
  end

  def div(_x, _y), do: "Bad argument!"
end
