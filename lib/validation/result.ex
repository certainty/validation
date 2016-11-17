defmodule Validation.Result do
  @moduledoc """
  The result of a validation. It contains the final data and errors.
  """

  defstruct [
    data: %{},
    errors: %{}
  ]

  def put_error(%__MODULE__{} = result, key, message) do
    errors = Map.update(result.errors, key, [message], &([message | &1]))

    %{result | errors: errors}
  end
end
