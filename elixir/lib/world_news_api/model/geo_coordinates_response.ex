# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WorldNewsAPI.Model.GeoCoordinatesResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :latitude,
    :longitude,
    :city
  ]

  @type t :: %__MODULE__{
    :latitude => float(),
    :longitude => float(),
    :city => String.t | nil
  }

  def decode(value) do
    value
  end
end

