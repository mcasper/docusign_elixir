# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeDocumentTabs do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeDocumentTabs`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Returns tabs on the document.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :page_numbers (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeDocumentTabs{}} on success
  {:error, info} on failure
  """
  @spec tabs_get_document_tabs(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.EnvelopeDocumentTabs.t()} | {:error, Tesla.Env.t()}
  def tabs_get_document_tabs(connection, account_id, document_id, envelope_id, opts \\ []) do
    optional_params = %{
      page_numbers: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/documents/#{document_id}/tabs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeDocumentTabs{})
  end

  @doc """
  Returns tabs on the specified page.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - page_number (String.t): The page number being accessed.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeDocumentTabs{}} on success
  {:error, info} on failure
  """
  @spec tabs_get_page_tabs(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.EnvelopeDocumentTabs.t()} | {:error, Tesla.Env.t()}
  def tabs_get_page_tabs(
        connection,
        account_id,
        document_id,
        envelope_id,
        page_number,
        _opts \\ []
      ) do
    %{}
    |> method(:get)
    |> url(
      "/v2/accounts/#{account_id}/envelopes/#{envelope_id}/documents/#{document_id}/pages/#{
        page_number
      }/tabs"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeDocumentTabs{})
  end
end
