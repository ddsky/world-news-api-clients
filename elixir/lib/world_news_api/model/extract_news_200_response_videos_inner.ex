# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WorldNewsAPI.Model.ExtractNews200ResponseVideosInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :summary,
    :duration,
    :thumbnail,
    :title,
    :url
  ]

  @type t :: %__MODULE__{
    :summary => String.t | nil,
    :duration => integer() | nil,
    :thumbnail => String.t | nil,
    :title => String.t | nil,
    :url => String.t | nil
  }

  def decode(value) do
    value
  end
end

