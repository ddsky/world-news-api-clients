# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WorldNewsAPI.Model.ExtractNews200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :text,
    :url,
    :image,
    :images,
    :video,
    :videos,
    :publish_date,
    :author,
    :authors,
    :language
  ]

  @type t :: %__MODULE__{
    :title => String.t | nil,
    :text => String.t | nil,
    :url => String.t | nil,
    :image => String.t | nil,
    :images => [WorldNewsAPI.Model.ExtractNews200ResponseImagesInner.t] | nil,
    :video => String.t | nil,
    :videos => [WorldNewsAPI.Model.ExtractNews200ResponseVideosInner.t] | nil,
    :publish_date => String.t | nil,
    :author => String.t | nil,
    :authors => [String.t] | nil,
    :language => String.t | nil
  }

  alias WorldNewsAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:images, :list, WorldNewsAPI.Model.ExtractNews200ResponseImagesInner)
     |> Deserializer.deserialize(:videos, :list, WorldNewsAPI.Model.ExtractNews200ResponseVideosInner)
  end
end

