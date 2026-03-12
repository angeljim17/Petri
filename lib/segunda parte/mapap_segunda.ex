defmodule PetriMapa do

  def fire(red,t,m) do
    if Map.has_key?(red,t) do
      MapSet.union(m, red[t])
    else
      m
    end
  end

end
