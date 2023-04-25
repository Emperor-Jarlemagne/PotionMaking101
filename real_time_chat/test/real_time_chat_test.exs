defmodule RealTimeChatTest do
  use ExUnit.Case
  doctest RealTimeChat

  test "greets the world" do
    assert RealTimeChat.hello() == :world
  end
end
