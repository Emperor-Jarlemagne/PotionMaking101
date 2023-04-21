defmodule AllStringsTest do
  use ExUnit.Case
  doctest AllStrings

  test "trims the strings" do
    assert AllStrings.trim_string(" hey ") == "hey"
  end

  test "first letter of the string" do
    assert AllStrings.first_letter("musket") == "m"
  end

  test "Capitalized initials of a first name with a period and a space" do
    assert AllStrings.initial("bard") == "B. "
  end

  test "Capital initials of a full name (spaced with periods)" do
    assert AllStrings.initials("bard seger") == "B. S."
  end

  test "returns a saucer" do
    assert AllStrings.build_saucer() == """

                      %%%%%%%%%%%%%%%%%%%%
                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
    ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
  ************************************************************
      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
         ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,
              ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

  """
  end

end
