# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WorldNewsAPI.Model.ExtractNewsLinks200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :news_links
  ]

  @type t :: %__MODULE__{
    :news_links => [String.t] | nil
  }

  def decode(value) do
    value
  end
end

