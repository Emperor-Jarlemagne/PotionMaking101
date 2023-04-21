defmodule AllStrings do
  @moduledoc """
  Documentation for `AllStrings`.
  """

  @doc """
  Trims the given string of white space

  ## Parameters
  - value: string
  """
  def trim_string(value) do
    String.trim(value)
  end

  @doc """
  returns the first letter of the 'value' string

  ## Parameters
  - value: string
  """
  def first_letter(value) do
    String.trim(value)
    |> String.first()
  end

  @doc """
  returns the capitalized first letter of the 'value' string as well as a period followed by a space

  ## Parameters
  - value: string
  """
  def initial(value) do
    "#{first_letter(value)
    |> String.capitalize()}. "
  end

  @doc """
  returns the capitalized first letters of both the first and last name
  of the 'full_name' string,
  as well as gives them a period and a space between them

  ## Parameters
  - full_name: string
  """
  def initials(full_name) do
    list = String.split(full_name)

    Enum.map(list, fn name ->
      initial(name)
    end)
    |> List.to_string()
    |> String.trim()
  end

  @doc """
  this prints out a saucer in the IO

  ## Parameters
  - build_saucer(): function
  """
  def display_saucer() do
    IO.puts(build_saucer())
  end

  @doc """
  this is the formatted flying saucer

  ## Parameters
  saucer?
  """
  def build_saucer() do
    """

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

  @doc """
  this prints out a customised saucer in the IO

  ## Parameters
  - full_name: string
  - customise_saucer(): function
  """
  def display_customise_spacecraft(full_name) do
    IO.puts(customise_spacecraft(full_name))
  end

  @doc """
  this is a customised saucer

  ## Parameters
  - full_name: string
  - build_saucer(): function
  """
  defp customise_spacecraft(full_name) do
    build_saucer()
    |> String.replace("************************************************************", "******************** #{full_name} **********************")
  end
end
