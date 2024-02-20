defmodule CalcTest do
  use ExUnit.Case
  doctest Calc

  describe "addition" do
    test "addition", do: assert(Calc.add(2, 2) == 4)

    test "addition with first float", do: assert(Calc.add(2.0, 2) === 4.0)

    test "addition with second float", do: assert(Calc.add(2, 2.0) === 4.0)

    test "raises error with not valid argumnet" do
      assert_raise RuntimeError, fn -> Calc.div("2", "2") end
    end
  end

  describe "subtraction" do
    test "subtraction", do: assert(Calc.sub(4, 2) == 2)

    test "subtraction with first float", do: assert(Calc.sub(4.0, 2) === 2.0)

    test "subtraction with second float", do: assert(Calc.sub(4, 2.0) === 2.0)

    test "raises error with not valid argumnet" do
      assert_raise RuntimeError, fn -> Calc.div("4", "2") end
    end
  end

  describe "multiply" do
    test "multiply", do: assert(Calc.multi(3, 5) == 15)

    test "multiply with first float", do: assert(Calc.multi(3.0, 5) === 15.0)

    test "multiply with second float", do: assert(Calc.multi(3, 5.0) === 15.0)

    test "raises error with not valid argumnet" do
      assert_raise RuntimeError, fn -> Calc.div("3", "5") end
    end
  end

  describe "division" do
    test "division", do: assert(Calc.div(15, 3) == 5)

    test "division with first float", do: assert(Calc.div(15.0, 3) === 5.0)

    test "division with second float", do: assert(Calc.div(15, 3.0) === 5.0)

    test "raise error with division on 0" do
      assert_raise RuntimeError, fn -> Calc.div(15, 0) end
    end

    test "raises error with not valid argumnet" do
      assert_raise RuntimeError, fn -> Calc.div("15", "3") end
    end
  end
end
