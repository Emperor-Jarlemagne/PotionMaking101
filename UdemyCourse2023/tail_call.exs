# Tail call optimization
# If the very last thing a function does is call itself,
# then there is no need to make the call. The runtime can jump
# (like GOTO) back to the start of the function

#Recursive call MUST be the last function executed
#You may need to accumulate the result
defmodule Recursion do
  def ten_times(n), do: ten_times(n, 0)
  def ten_times(0, acc), do: acc
  def ten_times(n, acc) do
    # tail optimized
    ten_times(n - 1, acc + 10)
  end
end
IO.puts Recursion.ten_times(3)
