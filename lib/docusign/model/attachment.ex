# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Attachment do
  @moduledoc """
  Contains information about an attachment.
  """

  @derive [Poison.Encoder]
  defstruct [
    :accessControl,
    :attachmentId,
    :attachmentType,
    :data,
    :label,
    :name,
    :remoteUrl
  ]

  @type t :: %__MODULE__{
          :accessControl => String.t(),
          :attachmentId => String.t(),
          :attachmentType => String.t(),
          :data => String.t(),
          :label => String.t(),
          :name => String.t(),
          :remoteUrl => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Attachment do
  def decode(value, _options) do
    value
  end
end
