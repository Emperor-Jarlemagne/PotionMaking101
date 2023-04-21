defmodule LinkedListsTest do
  use ExUnit.Case
  doctest LinkedLists

  test "returns equipment list" do
    assert LinkedLists.get_equipment_list() ==
      ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
  end

  test "returns the first item of a list" do
    list = ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
    assert LinkedLists.get_first_item(list) == "Space Helmet"
  end

  test "removes the first item of a list" do
    list = ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
    assert LinkedLists.remove_first_item(list) ==
      ["Space Suit", "Snacks", "Grappling Hook", "Probe"]
  end

  test "adds a new item to a list, but slowly" do
    list = ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
    assert LinkedLists.add_slow(list, "Boots") ==
      ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe", "Boots"]
  end

  test "adds a new item to the back of a list, but quickly" do
    list = ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
    assert LinkedLists.add_fast(list, "Jet Pack") ==
      ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe", "Jet Pack"]
  end

  test "removes an item from the list by index number" do
    list = ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
    assert LinkedLists.remove_item(list, 2) ==
      ["Space Helmet", "Space Suit", "Grappling Hook", "Probe"]
  end

  test "returns the length of the list (how many items are in it)" do
    list = ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
    assert LinkedLists.equipment_count(list) == 5
  end

  test "checks for an item within the list, returns a boolean" do
    list = ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
    assert LinkedLists.check_for_item(list, "Snacks") == true
    assert LinkedLists.check_for_item(list, "Jet Pack") == false
  end

  # test "adds an item to the beginning of the list" do
  #   list = ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
  #   assert LinkedLists.prepend(list, "Jet Pack") ==
  #     ["Jet Pack", "Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
  # end

end
