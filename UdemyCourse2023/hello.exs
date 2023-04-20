#Multiline function
defmodule Cook do
  def boil(food) do
    f = "Boil #{food}"
    String.upcase(f)
  end
  #single line function
  def sausage, do: boil("sausage")
end
IO.inspect Cook.boil("steak")
IO.inspect Cook.sausage
