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
  @spec add(number(), number()) :: number()
  def add(x, y) when is_number(x) and is_number(y) do
    x + y
  end

  def add(_x, _y), do: raise("Bad argument!")

  @doc """
  ## Subtraction

    iex> Calc.sub(4, 2)
    2

    iex> Calc.sub("4", "2")
    "Bad argument!"
  """

  @spec sub(number(), number()) :: number()
  def sub(x, y) when number(x) and number(y) do
    x - y
  end

  def sub(_x, _y), do: raise("Bad argument!")

  @doc """
  ## Multuply

    iex> Calc.multi(3, 5)
    15

    iex> Calc.multi("3", "5")
    "Bad argument!"
  """

  @spec multi(number(), number()) :: number()
  def multi(x, y) when is_number(x) and is_number(y) do
    x * y
  end

  def multi(_x, _y), do: raise("Bad argument!")

  @doc """
  ## Division

    iex> Calc.div(15, 3)
    5.0

    iex> Calc.div(15, 0)
    "Bad argument in arithmetic expression: second parametr cant be 0"

    iex> Calc.div("15", "3")
    "Bad argument!"
  """

  @spec div(number(), number()) :: float() | :error
  def div(_x, y) when y == 0 do
    raise "Bad argument in arithmetic expression: second parametr can't be 0"
  end

  def div(x, y) when is_number(x) and is_number(y) do
    x / y
  end

  def div(_x, _y), do: raise("Bad argument!")
end
