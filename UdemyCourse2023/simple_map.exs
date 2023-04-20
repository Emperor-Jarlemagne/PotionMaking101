# Map
# Traverse a list applying a mapping

defmodule Recursion do
  def square([]), do: []
  # not tail call optimized
  def square([head | tail]), do: [head * head | square(tail )]
end
IO.inspect Recursion.square([1,2,3,4])
