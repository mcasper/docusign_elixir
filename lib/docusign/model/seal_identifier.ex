# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.SealIdentifier do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :sealDisplayName,
    :sealName
  ]

  @type t :: %__MODULE__{
          :sealDisplayName => String.t(),
          :sealName => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.SealIdentifier do
  def decode(value, _options) do
    value
  end
end