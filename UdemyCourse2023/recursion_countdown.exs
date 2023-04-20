# functional languages use recursion to iterate over data without mutating it
# (until a condition is met)

defmodule Recursion do
  def countdown(0), do: IO.puts "Blast off!"
  def coutndown(n) do
    IO.puts n
    countdown(n - 1)
  end
end
Recursion.countdown(5)
