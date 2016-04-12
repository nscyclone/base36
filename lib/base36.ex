defmodule Base36 do
  use CustomBase, '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  @moduledoc """
  This module provides data encoding and decoding functions for base36 alphabet:

  | Value | Encoding | Value | Encoding | Value | Encoding | Value | Encoding |
  |------:|---------:|------:|---------:|------:|---------:|------:|---------:|
  |      0|         0|      9|         9|     18|         I|     27|         R|
  |      1|         1|     10|         A|     19|         J|     28|         S|
  |      2|         2|     11|         B|     20|         K|     29|         T|
  |      3|         3|     12|         C|     21|         L|     30|         U|
  |      4|         4|     13|         D|     22|         M|     31|         V|
  |      5|         5|     14|         E|     23|         N|     32|         W|
  |      6|         6|     15|         F|     24|         O|     33|         X|
  |      7|         7|     16|         G|     25|         P|     34|         Y|
  |      8|         8|     17|         H|     26|         Q|     35|         Z|
  """

  @doc """
  Encode base 10 integer to base 36 char from alphabet above.
  """
  def encode(integer)

  @doc """
  Decode base 36 char from alphabet above to base 10 integer.

  Returns tuple `{:ok, number}` if binary can be converted using alphabet,
  `:error` instead.
  """
  def decode(binary)

  @doc """
  Same as `decode/1` except this function return just number or raise error if
  binary can not be converted.
  """
  def decode!(binary)
end
