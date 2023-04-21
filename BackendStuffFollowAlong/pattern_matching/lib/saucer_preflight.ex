defmodule SaucerPreflight do
  defp max_load_lbs, do: 55
  defp convert_kg_to_lb(kg_value), do: kg_value * 2.2
  defp round_up(value), do: Float.ceil(value, 2)

  def get_total_load([]), do: 0
  def get_total_load([head | tail]) do
    (head
      |> EquipmentDetails.item_details()
      |> elem(0)
      |> convert_kg_to_lb()
      |> round_up()
    ) + get_total_load(tail)
  end
  # write recursive loop that converts kilograms to pounds
  # to access first value in tuple use 'elem(0)'
  # add the weight together to get total
  def is_under_max_load?(list) do
    # call recursive function
    # return boolean if under max value
    final_weight = get_total_load(list)
    if final_weight < max_load_lbs() do
      true
    else
      false
    end
  end

end
