defmodule PetriTest do
  use ExUnit.Case

  test "lista" do
    red = RedPetri.red_lista()
    m = MapSet.new([P0])

    nuevo = PetriLista.fire(red, A, m)

    assert MapSet.member?(nuevo, P1)
    assert MapSet.member?(nuevo, P2)
  end

  test "mapa" do
    red = RedPetri.red_mapa()
    m = MapSet.new([P0])

    nuevo = PetriMapa.fire(red, P0, m)
    assert MapSet.member?(nuevo, A)
  end

end
