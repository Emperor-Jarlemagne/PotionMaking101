defmodule ControlFlow do
  @moduledoc """
  Documentation for `ControlFlow` Module
  Checks for all pre-flight routines
  """
  @doc """
  check_max_load - if total weight is greater than 55, returns that it is not safe to fly

  check_fuel_level - returns fuel level as string, based on percentage input

  err_code_check - returns error code based on input value

  convert_kg_to_lb - converts kg's to lb's, is private module

  equipment_check - returns clearance based on total weight, input as tuple: {weight, unit_type, quantity}
  """

def check_max_load(load) do
  # if load < 55, do: "Safe to fly", else: "Too Heavy to FLLLLLLLYYYY"
  unless load < 55, do: "TOOO HEAVY, NO GO!"
end

def check_fuel_level(percentage) do
  cond do
    percentage == 100 -> "full tank"
    percentage > 75 -> "3/4 tank"
    percentage > 49 -> "1/2 tank"
    percentage > 25 -> "1/4 tank"
    percentage > 5 -> "Almost Empty!"
    percentage == 0 -> "Empty"
    true -> "You're out of fuel!"
  end
end

def err_code_check(value) do
  case value do
    200 -> :ok
    201 -> :created
    204 -> :no_content
    n when is_integer(n) and n > 299 -> :error
    _ -> :unknown_error
  end
end

defp convert_kg_to_lb(kg_value), do: kg_value * 2.2

def equipment_check(equipment_tuple) do
  case equipment_tuple do
    {weight, unit_type, quantity} when weight / quantity < 16 and unit_type == :kg -> :equipment_clear
    {weight, unit_type, quantity} when unit_type == :lb ->
      if convert_kg_to_lb(weight) / quantity < 16, do:  :equipment_clear, else: :failed
      _ -> :failed
  end
end

def equipment_type_check(equipment_tuple) do
  case equipment_tuple do
    {weight, unit_type, quantity} when is_number(weight) and is_atom(unit_type) and is_integer(quantity) -> :ok
    _ -> :failed
  end
end
#add type checks to equipment checks
# weight is always an number, weight type is always an atom, quantity is always an integer

end
