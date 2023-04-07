# Pattern matching allows functions to have multiple clauses
defmodule Cook do
  def cook,             do: cook("fry", "sausage")
  def cook(0),          do: cook("bake", "banana")
  def cook(meat),       do: cook("grill", meat)
  def cook(type, food), do: cook"#{type} #{food}"
end
IO.inspect Cook.cook
