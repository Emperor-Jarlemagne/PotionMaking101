defmodule BackendSolutionTest do
  use ExUnit.Case
  doctest BackendSolution

  test "greets the world" do
    assert BackendSolution.hello() == :world
  end
end
