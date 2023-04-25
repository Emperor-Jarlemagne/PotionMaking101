defmodule Binary do
  @moduledoc """
  Documentation for `Binary`.
  """
 # DO GIF and BMP
 # BMP - 42 4D
 # GIF - 47 49 46 38 39 61
 # HINT: follow pattern for other image types
  def get_png_binary() do
    File.read!(Path.join("lib", "example_png.png"))
  end

  def get_jpg_binary() do
    File.read!(Path.join("lib", "example_jpg.jpg"))
  end

  def get_bmp_binary() do
    File.read!(Path.join("lib", "example_bmp.bmp"))
  end

  def get_gif_binary() do
    File.read!(Path.join("lib", "example_gif.gif"))
  end

  def type_from_binary(file_binary) when binary_part(file_binary, 0, 8) == <<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A>>, do: {:ok, "image/png"}
  def type_from_binary(file_binary) when binary_part(file_binary, 0, 3) == <<0xFF, 0xD8, 0xFF>>, do: {:ok, "image/jpg"}
  def type_from_binary(file_binary) when binary_part(file_binary, 0, 2) == <<0x42, 0x4D>>, do: {:ok, "image/bmp"}
  def type_from_binary(file_binary) when binary_part(file_binary, 0, 6) == <<0x47, 0x49, 0x46, 0x38, 0x39, 0x61>>, do: {:ok, "image/gif"}
  def type_from_binary(_), do: {:error, "unknown"}

  def type_from_binary_pm(<<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, _body::bitstring>>), do: {:ok, "image/png"}
  def type_from_binary_pm(<<0xFF, 0xD8, 0xFF, _body::bitstring>>), do: {:ok, "image/jpg"}
  def type_from_binary_pm(<<0x42, 0x4D, _body::bitstring>>), do: {:ok, "image/bmp"}
  def type_from_binary_pm(<<0x47, 0x49, 0x46, 0x38, 0x39, 0x61, _body::bitstring>>), do: {:ok, "image/gif"}
  def type_from_binary_pm(_), do: {:error, "unknown"}

end
