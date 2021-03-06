# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeConsumerDisclosures do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeConsumerDisclosures`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Gets the Electronic Record and Signature Disclosure associated with the account.
  Retrieves the Electronic Record and Signature Disclosure, with html formatting, associated with the account. You can use an optional query string to set the language for the disclosure.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - recipient_id (String.t): The &#x60;recipientId&#x60; used when the envelope or template was created.
  - opts (KeywordList): [optional] Optional parameters
    - :lang_code (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeConsumerDisclosures{}} on success
  {:error, info} on failure
  """
  @spec consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.EnvelopeConsumerDisclosures.t()} | {:error, Tesla.Env.t()}
  def consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id(
        connection,
        account_id,
        envelope_id,
        recipient_id,
        opts \\ []
      ) do
    optional_params = %{
      langCode: :query
    }

    %{}
    |> method(:get)
    |> url(
      "/v2/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}/consumer_disclosure"
    )
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeConsumerDisclosures{})
  end

  @doc """
  Reserved: Gets the Electronic Record and Signature Disclosure associated with the account.
  Reserved: Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, associated with the account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - lang_code (String.t): The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to \&quot;browser\&quot; to automatically detect the browser language being used by the viewer and display the disclosure in that language.
  - recipient_id (String.t): The &#x60;recipientId&#x60; used when the envelope or template was created.
  - opts (KeywordList): [optional] Optional parameters
    - :lang_code2 (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeConsumerDisclosures{}} on success
  {:error, info} on failure
  """
  @spec consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id_lang_code(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.EnvelopeConsumerDisclosures.t()} | {:error, Tesla.Env.t()}
  def consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id_lang_code(
        connection,
        account_id,
        envelope_id,
        lang_code,
        recipient_id,
        opts \\ []
      ) do
    optional_params = %{
      langCode: :query
    }

    %{}
    |> method(:get)
    |> url(
      "/v2/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}/consumer_disclosure/#{
        lang_code
      }"
    )
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeConsumerDisclosures{})
  end
end
