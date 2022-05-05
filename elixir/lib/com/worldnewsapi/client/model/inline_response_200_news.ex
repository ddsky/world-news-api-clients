# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.worldnewsapi.client.Model.InlineResponse200News do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"title",
    :"text",
    :"summary",
    :"url",
    :"image",
    :"author",
    :"language",
    :"source_country",
    :"sentiment"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"title" => String.t | nil,
    :"text" => String.t | nil,
    :"summary" => String.t | nil,
    :"url" => String.t | nil,
    :"image" => String.t | nil,
    :"author" => String.t | nil,
    :"language" => String.t | nil,
    :"source_country" => String.t | nil,
    :"sentiment" => float() | nil
  }
end

defimpl Poison.Decoder, for: com.worldnewsapi.client.Model.InlineResponse200News do
  def decode(value, _options) do
    value
  end
end
