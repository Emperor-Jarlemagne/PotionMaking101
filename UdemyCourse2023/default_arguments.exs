#Default arguments with mulitple clauses need a function head (blank function)
defmodule Cook do
  def cook(food, type \\"boiled", veg \\ "beans")
  def cook(food, type, veg), do: "Tasty #{food} with #{type} #{veg}"
end
IO.inspect Cook.cook "brussels", "bake", "pineapple"
