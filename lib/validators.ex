defmodule Elixirstuts.Validators do
  alias Elixirstuts.Errors
  # ============================================================
  @spec validate_num_list([number()]) :: {boolean(), [number()]}
  def validate_num_list(nums) when is_list(nums) do
    {Enum.all?(nums, fn el -> is_number(el) end), nums}
  end
  def validate_num_list(_), do: Errors.invalid_data_type()
end
