defmodule Guards do
  @moduledoc """
  Documentation for `Guards`.
  """
def type(value) when is_integer(value), do: :integer
def type(value) when is_float(value), do: :float
def type(value) when not is_number(value), do: :not_number

def is_single_digit(value) when is_integer(value) and value < 10, do: true
def is_single_digit(value) when not is_integer(value) or value > 9, do: false

defguardp is_even(value) when is_integer(value) and rem(value, 2) == 0

def return_even_numbers(value \\ :empty)
def return_even_numbers(value) when is_even(value), do: value
def return_even_numbers(value) when not is_even(value), do: :not_even

# Challenge: write is_under_max_load/1
# rewrite the max_load function using guards

defguard is_under_weight(value) when value < 55 or value == 55

def under_max_load(value) when is_under_weight(is_under_max_load?(list)), do: true
def under_max_load(value) when not is_under_weight(is_under_max_load?(list)), do: false

end
end
