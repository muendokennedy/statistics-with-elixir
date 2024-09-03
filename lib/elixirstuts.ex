defmodule Elixirstuts do
  alias Elixirstuts.CentralTendency.{Mean, Median}
  # def population_mean(nums), do: Mean.population_mean(nums)
  defdelegate population_mean(nums), to: Mean
  defdelegate sample_mean(nums), to: Mean
  defdelegate median(num_list), to: Median
end
