# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WorldNewsAPI.Model.RetrieveNewspaperFrontPage200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :front_page
  ]

  @type t :: %__MODULE__{
    :front_page => WorldNewsAPI.Model.RetrieveNewspaperFrontPage200ResponseFrontPage.t | nil
  }

  alias WorldNewsAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:front_page, :struct, WorldNewsAPI.Model.RetrieveNewspaperFrontPage200ResponseFrontPage)
  end
end

