defmodule Calculator do
  @moduledoc """
  Calculator Functions
  """

  @doc """
  Returns the peprcentage of a given values
  Returns answer as 'float'

  ## Parameters
  - percentage: number (integer or float)
  - value: number (integer or float)
  """

  def find_percentage_of_value(percentage, value) do
    percentage
    |> BasicMath.divide(100)
    |> BasicMath.multiply(value)
    |> BasicMath.round_up()
  end

  @doc """
  Returns the distance traveled in kilometres
  Returns answer as 'float'

  ## Parameters
  - Speed: number (integer or float) - this is in km/h
  - Time: number (integer or float) - this is given in minutes
  """
  def find_distance_traveled(speed, time) do
    time
    |> BasicMath.divide(60)
    |> BasicMath.multiply(speed)
    |> BasicMath.round_up()
  end

end
