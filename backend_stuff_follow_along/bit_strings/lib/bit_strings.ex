defmodule BitStrings do
  @moduledoc """
  Documentation for `BitStrings`.
  """

#Fly to Base => FB
#Fly to Earth => FE
#Hover => H
#Tractor Beam ON => T
# Tractor Beam Off => O

#'FEHTOFB'

def encode_instruction(code_point) do
  case code_point do
    ?H -> 0b0000
    ?F -> 0b0001
    ?B -> 0b0010
    ?E -> 0b0100
    ?T -> 0b1000
    ?O -> 0b0011
  end
end

def encode(instructions, encoded_value \\ <<0::size(0)>>)
def encode([], encoded_value), do: encoded_value
def encode([head | tail], encoded_value) do
  encode(tail, <<encoded_value::bitstring, encode_instruction(head)::4>>)
end

#Write functino decode bitstrings to text
def decode_instructions(point_code) do
  case point_code do
    0b0000 -> ?H
    0b0001 -> ?F
    0b0010 -> ?B
    0b0100 -> ?E
    0b1000 -> ?T
    0b0011 -> ?O
  end
end

def decode(instructions, decoded_value \\ ' ')
def decode(<<0::0>>, decoded_value), do: decoded_value
def decode(<<head::4, tail::bitstring>>, decoded_value) do
  decode(tail, decoded_value ++ [decode_instructions(head)])
end

end
