defmodule BasicMathTest do
  use ExUnit.Case
  doctest BasicMath

  test "add 2 + 3 = 5" do
    assert BasicMath.add(2, 3) == 5
  end

  test "subtract 3 - 2 = 1" do
    assert BasicMath.subtract(3, 2) == 1
  end

  test "multiply 2 * 5 = 10" do
    assert BasicMath.multiply(2, 5) == 10
  end

  test "divide 20 / 5 = 4" do
    assert BasicMath.divide(20, 5) == 4
  end

  test "round up to nearest 2 decimal places" do
    assert BasicMath.round_up(3.14156972) == 3.15
  end

  test "find the percentage of the value" do
    assert Calculator.find_percentage_of_value(25, 100) == 25.0
  end

  test "how far did I travel? In KM's" do
    assert Calculator.find_distance_traveled(100, 10) == 16.67
  end
end
