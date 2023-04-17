defmodule TutorialTest do
  use ExUnit.Case
  doctest Tutorial

  test "greets the world" do
    assert Tutorial.hello() == :world
  end

  test "winks at you" do
    assert Tutorial.private_hell() == :winks_in_equity
  end
end
