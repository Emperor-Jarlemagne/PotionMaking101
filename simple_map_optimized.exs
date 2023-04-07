# Map
# Traverse a list applying a mapping

defmodule Recursion do
  def square([], acc), do: acc
  # tail call optimized!
  def square([head | tail], acc), do: square(tail, acc ++ [head * head])
end
IO.inspect Recursion.square([1,2,3,4], [])
