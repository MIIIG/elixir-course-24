defmodule CalcTest do
  use ExUnit.Case
  doctest Calc

  test "addition", do: assert Calc.add(2, 2) == 4

  test "addition with first float", do: assert Calc.add(2.0, 2) === 4.0

  test "addition with second float", do: assert Calc.add(2, 2.0) === 4.0

  test "not valid addition argumnet" do
    assert Calc.div("2", "2") == "Bad argument!"
  end

  test "subtraction", do: assert Calc.sub(4, 2) == 2

  test "subtraction with first float", do: assert Calc.sub(4.0, 2) === 2.0

  test "subtraction with second float", do: assert Calc.sub(4, 2.0) === 2.0

  test "not valid subtraction argumnet" do
    assert Calc.div("4", "2") == "Bad argument!"
  end

  test "multiply", do: assert Calc.multi(3, 5) == 15

  test "multiply with first float", do: assert Calc.multi(3.0, 5) === 15.0

  test "multiply with second float", do: assert Calc.multi(3, 5.0) === 15.0

  test "not valid multiply argumnet" do
    assert Calc.div("3", "5") == "Bad argument!"
  end

  test "division", do: assert Calc.div(15, 3) == 5

  test "division with first float", do: assert Calc.div(15.0, 3) === 5.0

  test "division with second float", do: assert Calc.div(15, 3.0) === 5.0

  test "division with 0" do
    assert Calc.div(15, 0) == "Bad argument in arithmetic expression: second parametr cant be 0"
  end

  test "not valid division argumnet" do
    assert Calc.div("15", "3") == "Bad argument!"
  end
end
