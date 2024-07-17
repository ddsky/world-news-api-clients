# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WorldNewsAPI.Model.SearchNews200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :offset,
    :number,
    :available,
    :news
  ]

  @type t :: %__MODULE__{
    :offset => integer() | nil,
    :number => integer() | nil,
    :available => integer() | nil,
    :news => [WorldNewsAPI.Model.SearchNews200ResponseNewsInner.t] | nil
  }

  alias WorldNewsAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:news, :list, WorldNewsAPI.Model.SearchNews200ResponseNewsInner)
  end
end

