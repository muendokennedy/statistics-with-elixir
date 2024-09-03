defmodule Elixirstuts.CentralTendency.Mean do

  alias Elixirstuts.{Errors, Validators}

  # sum (sigma) / count
  def population_mean([]), do: Errors.invalid_data_type()
  def population_mean(nums) when is_list(nums) do
    nums |> Validators.validate_num_list() |> cal_population_mean()
  end
  # ====================================================================
  def cal_population_mean(false, _), do: Errors.invalid_data_type()
  def cal_population_mean({true, nums}) do
    nums |> Enum.sum() |> mean(Enum.count(nums))
  end
  # ===================================================================
  def mean(sigma, count), do: sigma / count
end
