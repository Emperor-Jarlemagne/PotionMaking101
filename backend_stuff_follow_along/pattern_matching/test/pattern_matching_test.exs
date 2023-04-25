defmodule PatternMatchingTest do
  use ExUnit.Case
  doctest EquipmentDetails
  doctest SaucerPreflight

  describe "get_equipment_list/0" do
    test "returns the equipment list as atoms" do
      assert EquipmentDetails.get_equipment_list() ==
      [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
    end
  end

  describe "the item weights, weight type, and quantity" do
    test "all the items are listed properly" do
      assert EquipmentDetails.item_details(:space_helmet) == {3, :kg, 1}
      assert EquipmentDetails.item_details(:space_suit) == {16, :kg, 1}
      assert EquipmentDetails.item_details(:snacks) == {1, :kg, 16}
      assert EquipmentDetails.item_details(:grappling_hook) == {5, :kg, 2}
      assert EquipmentDetails.item_details(:probe) == {2, :kg, 2}
      assert_raise RuntimeError, fn ->
        EquipmentDetails.item_details(:jet_pack)
      end
    end
  end

  describe "get_total_load/1" do
    test "converts kg to lbs and totals the weight" do
      assert SaucerPreflight.get_total_load(EquipmentDetails.get_equipment_list()) == 59.44
    end
  end

  describe "is_under_max_load/1" do
    test "determines whether the saucer is too heavy to fly" do
      assert SaucerPreflight.is_under_max_load?(EquipmentDetails.get_equipment_list()) == false
    end
  end

end
