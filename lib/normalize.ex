defmodule Normalize do
  @moduledoc false

  import Nx.Defn

    defn softmax(t) do
      normalized = t - Nx.reduce_max(t)
      Nx.exp(normalized) / Nx.sum(Nx.exp(normalized))
    end
end
