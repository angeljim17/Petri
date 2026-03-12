defmodule RedPetri do

  def red_lista do
    [
      [P0, A],
      [P1, B],
      [P1, D],
      [P2, C],
      [P2, D],
      [P3, E],
      [P4, E],
      [A, P1],
      [A, P2],
      [B, P3],
      [C, P4],
      [D, P3],
      [D, P4],
      [E, P5]
    ]
  end

  def red_mapa do
    %{
      P0 => MapSet.new([A]),
      P1 => MapSet.new([B, D]),
      P2 => MapSet.new([C, D]),
      P3 => MapSet.new([E]),
      P4 => MapSet.new([E]),
      P5 => MapSet.new([]),
      A => MapSet.new([P1, P2]),
      B => MapSet.new([P3]),
      C => MapSet.new([P4]),
      D => MapSet.new([P3, P4]),
      E => MapSet.new([P5])
    }
  end

end
