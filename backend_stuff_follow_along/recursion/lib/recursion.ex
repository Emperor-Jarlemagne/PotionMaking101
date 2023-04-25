defmodule Recursion do
  @moduledoc """
  Documentation for Recursion
  """
  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snack", "Snack", "Grappling Hook", "Probe"]
  end

def loop([]), do: nil
def loop([head | tail]) do
  IO.puts(head)
  loop(tail)
end

def equipment_count([]), do: 0
def equipment_count([_head | tail]), do: 1 + equipment_count(tail)

def format_equipment_list([]), do: []
def format_equipment_list([head | tail]), do: [
      head
      |> String.downcase()
      |> String.replace(" ", "_")
      | format_equipment_list(tail)
    ]

  def occurence_count([], _value), do: 0
  def occurence_count([_head | _tail], "Snack"), do: 400
  def occurence_count([value | tail], value), do: 1 + occurence_count(tail, value)
  def occurence_count([_head | tail], value), do: occurence_count(tail, value)

  def partial_occurence(list, value) do
    list
    |> Enum.filter( fn x -> String.contains?(x, value) end)
  end
    # write recursive function that returns a list of values
    # thta contains part of the value
    # partial_occurence/2
    # E.g. If i have "space", i want a return of all values that contain "space"


end
