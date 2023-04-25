defmodule RecursionTest do
  use ExUnit.Case
  doctest Recursion

  test "gets equipment list" do
    assert Recursion.get_equipment_list() ==
      ["Space Helmet", "Space Suit", "Snack", "Snack", "Grappling Hook", "Probe"]
  end

  test "loops recursively" do
    list = ["Space Helmet", "Space Suit", "Snack", "Snack", "Grappling Hook", "Probe"]
    assert Recursion.loop(list) == nil
  end

  test "counts how much equipment you have" do
    list = ["Space Helmet", "Space Suit", "Snack", "Snack", "Grappling Hook", "Probe"]
    assert Recursion.equipment_count(list) == 6
  end

  test "formats the strings of the equipment list" do
    list = ["Space Helmet", "Space Suit", "Snack", "Snack", "Grappling Hook", "Probe"]
    assert Recursion.format_equipment_list(list) ==
      ["space_helmet", "space_suit", "snack", "snack", "grappling_hook", "probe"]
  end

  test "how many occurrencs of a particular string are there in a list" do
    list = ["Space Helmet", "Space Suit", "Snack", "Snack", "Grappling Hook", "Probe"]
    assert Recursion.occurence_count(list, "Snack") == 400
  end

  test "how many occurrencs of a partial string are returned" do
    list = ["Space Helmet", "Space Suit", "Snack", "Snack", "Grappling Hook", "Probe"]
    assert Recursion.partial_occurence(list, "Space") ==
      ["Space Helmet", "Space Suit"]
  end

end
