# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.MatchBox do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :height,
    :pageNumber,
    :width,
    :xPosition,
    :yPosition
  ]

  @type t :: %__MODULE__{
          :height => integer(),
          :pageNumber => integer(),
          :width => integer(),
          :xPosition => integer(),
          :yPosition => integer()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.MatchBox do
  def decode(value, _options) do
    value
  end
end