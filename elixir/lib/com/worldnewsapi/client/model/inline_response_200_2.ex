# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.worldnewsapi.client.Model.InlineResponse2002 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"news_links"
  ]

  @type t :: %__MODULE__{
    :"news_links" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: com.worldnewsapi.client.Model.InlineResponse2002 do
  def decode(value, _options) do
    value
  end
end

