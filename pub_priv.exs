#Functions can be publis or private
defmodule Cook do
  #Public funtction
  def cook(meat, veg), do: _cook("Grill", meat) <> _cook("boil", veg)
  #Private function
  defp _cook(cook, food) do
    "#{cook} #{food} "
  end
end
IO.inspect Cook.cook "pasta", "bacon"
IO.inspect Cook._cook "pasta", "bacon"
