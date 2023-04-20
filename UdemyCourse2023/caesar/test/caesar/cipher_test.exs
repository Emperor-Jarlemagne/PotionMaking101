defmodule Caesar.CipherTest do
  use ExUnit.Case
  doctest Caesar.Cipher

  test "encrypt shift cipher mapping" do
    assert Caesar.Cipher.encrypt("abcd", 1) == "zabc"
  end

  test "encrypt handles capital letters" do
    assert Caesar.Cipher.encrypt("abCD", 1) == "zaBC"
  end

  test "encrypt handles spaces" do
    assert Caesar.Cipher.encrypt("ab cd", 1) == "za bc"
  end

  test "encrypt handles a large shift number" do
    assert Caesar.Cipher.encrypt("abcd", 27) == "zabc"
  end

end
