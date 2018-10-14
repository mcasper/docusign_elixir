# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ServiceVersion do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :version,
    :versionUrl
  ]

  @type t :: %__MODULE__{
          :version => String.t(),
          :versionUrl => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ServiceVersion do
  def decode(value, _options) do
    value
  end
end