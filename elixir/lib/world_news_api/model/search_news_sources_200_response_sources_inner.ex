# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WorldNewsAPI.Model.SearchNewsSources200ResponseSourcesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :url,
    :language
  ]

  @type t :: %__MODULE__{
    :name => String.t | nil,
    :url => String.t | nil,
    :language => String.t | nil
  }

  def decode(value) do
    value
  end
end

