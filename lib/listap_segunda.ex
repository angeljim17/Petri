defmodule PetriLista do

  def preset(f,n) do
    f
    |> Enum.filter(fn [_a,b] -> b == n end)
    |> Enum.map(fn [a,_b] -> a end)
    |> MapSet.new()
  end

  def postset(f,n) do
    f
    |> Enum.filter(fn [a,_b] -> a == n end)
    |> Enum.map(fn [_a,b] -> b end)
    |> MapSet.new()
  end

  def enabled?(f,t,m) do
    preset(f,t)
    |> MapSet.subset?(m)
  end

  def fire(f,t,m) do
    if enabled?(f,t,m) do
      m
      |> MapSet.difference(preset(f,t))
      |> MapSet.union(postset(f,t))
    else
      m
    end
  end

  def enablement(f,m) do
    transiciones = [A,B,C,D,E]

    Enum.filter(transiciones, fn t ->
      preset(f,t)
      |> MapSet.subset?(m)
    end)
    |> MapSet.new()
  end

end
