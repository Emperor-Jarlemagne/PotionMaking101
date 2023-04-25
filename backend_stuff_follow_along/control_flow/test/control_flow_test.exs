defmodule ControlFlowTest do
  use ExUnit.Case
  doctest ControlFlow

  test "checks max load" do
    assert ControlFlow.check_max_load(56) == "TOOO HEAVY, NO GO!"
  end

  test "checks fuel levels" do
    assert ControlFlow.check_fuel_level(49) == "1/4 tank"
  end

  test "error code check" do
    assert ControlFlow.err_code_check(200) == :ok
  end

  test "equipment check - total weight in kg" do
    assert ControlFlow.equipment_check({15, :kg, 1}) == :equipment_clear
  end

  test "equipment check - total weight in lb" do
    assert ControlFlow.equipment_check({15, :lb, 1}) == :failed
  end

  test "equipment check - weight is always a number" do
    assert is_number(elem({15, :lb, 1}, 0)) == true
  end

  test "equipment check - unit type is always an atom" do
    assert is_atom(elem({15, :lb, 1}, 1)) == true
  end

  test "equipment check - quantity is always an integer" do
    assert is_integer(elem({15, :lb, 1}, 2)) == true
  end

end
