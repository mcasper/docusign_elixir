# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.UserCustomSettings do
  @moduledoc """
  Users&#39; custom settings
  """

  @derive [Poison.Encoder]
  defstruct [
    :customSettings
  ]

  @type t :: %__MODULE__{
          :customSettings => [NameValue]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.UserCustomSettings do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:customSettings, :list, DocuSign.Model.NameValue, options)
  end
end