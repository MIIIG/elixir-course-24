defmodule CalcTest do
  use ExUnit.Case
  doctest Calc

  test "addition", do: assert Calc.add(2, 2) == 4

  test "subtraction", do: assert Calc.sub(4, 2) == 2

  test "multiply", do: assert Calc.multi(3, 5) == 15

  test "division", do: assert Calc.div(15, 3) == 5.0
end
