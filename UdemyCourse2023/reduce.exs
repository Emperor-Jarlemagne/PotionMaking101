# Reduce, takes multiple values
# tries to reduce them down to one value
# Sum a list of nunbers
defmodule Recursion do
  def sum([], acc), do: acc
  def sum([head | tail], acc), do: sum(tail, acc + head)
end
IO.puts Recursion.sum([1,2,3], 0)
