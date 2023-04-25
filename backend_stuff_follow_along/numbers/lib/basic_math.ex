defmodule BasicMath do
  @moduledoc """
  Basic Equations in Elixir
  """

  @doc """
  Returns the sum of two values: addend_1 and addend_2
  Returns answer as 'number'

  ## Parameters
  - addend_1: number (integer or float)
  - addend_2: number (integer or float)
  """
  def add(addend_1, addend_2), do: addend_1 + addend_2

   @doc """
  Returns the difference of two values: minuend and subtrahend
  Returns answer as 'number'

  ## Parameters
  - minuend: number (integer or float)
  - subtrahend: number (integer or float)
  """
  def subtract(minuend, subtrahend), do: minuend - subtrahend

  @doc """
  Returns the product of two values: multiplier and multiplicand
  Returns answer as 'number'

  ## Parameters
  - multiplier: number (integer or float)
  - multiplicand: number (integer or float)
  """
  def multiply(multiplier, multiplicand), do: multiplier * multiplicand

  @doc """
  Returns the quotient of two values: dividend and divisor
  Returns answer as 'number'

  ## Parameters
  - dividend: number (integer or float)
  - divisor: number (integer or float)
  """
  def divide(dividend, divisor), do: dividend / divisor

  @doc """
  Returns a value rounded up to the nearest 100th of the given 'value'
  Returns answer as 'number'

  ## Parameters
  - value: number (integer or float)
  """
  def round_up(value) do
    Float.ceil(value, 2)
  end

end
