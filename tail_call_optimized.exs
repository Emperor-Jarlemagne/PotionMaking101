# Tail call optimization
# If the very last thing a function does is call itself,
# then there is no need to make the call. The runtime can jump
# (like GOTO) back to the start of the function

#Recursive call MUST be the last function executed
defmodule Recursion do
  def ten_times(0), do: 0
  def ten_times(n) do
    #not tail optimized
    10 + ten_times(n - 1)
  end
end
IO.puts Recursion.ten_times(3)
