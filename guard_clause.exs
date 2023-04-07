#guards are a limited subset of elixir expressions
# e.g. is_xxx, ===, etc.
defmodule Cook do
  def cook(food) when food == 0 do
    "Nothing cooking"
  end
  def cook(food) when is_integer(food), do: "food is a number #{food}?"
  def cook(food) when is_atom(food), do: "food is atomics!"
  def cook(food) when is_binary(food), do: cook("boil", food)
  def cook(type, food), do: "#{type} #{food}"
end
IO.inspect Cook.cook("bird")
