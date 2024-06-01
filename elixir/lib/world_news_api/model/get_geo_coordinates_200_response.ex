# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WorldNewsAPI.Model.GetGeoCoordinates200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :latitude,
    :longitude,
    :city
  ]

  @type t :: %__MODULE__{
    :latitude => float() | nil,
    :longitude => float() | nil,
    :city => String.t | nil
  }

  def decode(value) do
    value
  end
end
