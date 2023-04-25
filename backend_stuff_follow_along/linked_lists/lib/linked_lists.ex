defmodule LinkedLists do
  @moduledoc """
  Documentation for `LinkedLists`.
  """

  @doc """
  Sets the list of equipment
  """
  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
  end

  @doc """
  Returns the first item of a list

  ## Parameters
  - list: list
  """
def get_first_item(list) do
  hd(list)
end

  @doc """
  Removes the first item of a list

  ## Parameters
  - list: list
  """
def remove_first_item(list) do
  tl(list)
end

  @doc """
  Adds an item to a list, in an iterative fashion (therfore slowly)

  ## Parameters
  - list: list
  - value: string
  """
def add_slow(list, value) do
  list ++ [value]
end

  @doc """
  Adds an item to a list, by reversing the order of the list,
  adding an item to the beginning,
  and then reversing the list again

  ## Parameters
  - list: list
  - value: string
  """
def add_fast(list, value) do
  list
  |> Enum.reverse()
  |> prepend(value)
  |> Enum.reverse()
end

  @doc """
  Removes an item from a list based on it's index value

  ## Parameters
  - list: list
  - index: integer
  """
def remove_item(list, index) do
  List.delete_at(list, index)
end

  @doc """
  Returns the length of a list
  Returns an integer

  ## Parameters
  - list: list
  """
def equipment_count(list) do
  length(list)
end

  @doc """
  Checks whether an item is within the list
  Returns a boolean

  ## Parameters
  - list: list
  - item: string/int/atom
  """
def check_for_item(list, item) do
  item in list
end

  @doc """
  Prepends a value to the beginning of the list

  ## Parameters
  - list: list
  - value: string/int/atom
  """
defp prepend(list, value) do
  [value | list]
end

end
