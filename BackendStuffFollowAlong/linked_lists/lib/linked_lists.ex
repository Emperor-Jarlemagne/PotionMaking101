defmodule LinkedLists do
  @moduledoc """
  Documentation for `LinkedLists`.
  """
  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
  end

def get_first_item(list) do
  hd(list)
end

def remove_first_item(list) do
  tl(list)
end

def add_item(list, value) do
  list ++ [value]
end

def add_fast(list, value) do
  list
  |> Enum.reverse()
  |> prepend(value)
  |> Enum.reverse()
end

def remove_item(list, index) do
  List.delete_at(list, index)
end

def equipment_count(list) do
  length(list)
end

def check_for_item(list, item) do
  item in list
end

defp prepend(list, value) do
  [value | list]
end

end
