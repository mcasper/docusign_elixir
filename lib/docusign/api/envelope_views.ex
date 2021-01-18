# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeViews do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeViews`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Returns a URL to the authentication view UI.
  Returns a URL that allows you to embed the authentication view of the DocuSign UI in your applications.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :console_view_request (ConsoleViewRequest): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeViews{}} on success
  {:error, info} on failure
  """
  @spec views_post_account_console_view(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.EnvelopeViews.t()} | {:error, Tesla.Env.t()}
  def views_post_account_console_view(connection, account_id, opts \\ []) do
    optional_params = %{
      consoleViewRequest: :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/views/console")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeViews{})
  end

  @doc """
  Returns a URL to the envelope correction UI.
  Returns a URL that allows you to embed the envelope correction view of the DocuSign UI in your applications.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :correct_view_request (CorrectViewRequest): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeViews{}} on success
  {:error, info} on failure
  """
  @spec views_post_envelope_correct_view(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.EnvelopeViews.t()} | {:error, Tesla.Env.t()}
  def views_post_envelope_correct_view(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      correctViewRequest: :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/views/correct")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeViews{})
  end

  @doc """
  Returns a URL to the edit view UI.
  Returns a URL that allows you to embed the edit view of the DocuSign UI in your applications. This is a one-time use login token that allows the user to be placed into the DocuSign editing view.   Upon sending completion, the user is returned to the return URL provided by the API application.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :return_url_request (ReturnUrlRequest): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeViews{}} on success
  {:error, info} on failure
  """
  @spec views_post_envelope_edit_view(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.EnvelopeViews.t()} | {:error, Tesla.Env.t()}
  def views_post_envelope_edit_view(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      returnUrlRequest: :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/views/edit")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeViews{})
  end

  @doc """



  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :recipient_view_request (RecipientViewRequest): 

  ## Returns

  {:ok, %DocuSign.Model.TemplateViews{}} on success
  {:error, info} on failure
  """
  @spec views_post_envelope_recipient_shared_view(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.TemplateViews.t()} | {:error, Tesla.Env.t()}
  def views_post_envelope_recipient_shared_view(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      recipientViewRequest: :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/views/shared")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TemplateViews{})
  end

  @doc """
  Returns a URL to the recipient view UI.
  Returns a URL that enables you to embed the recipient view of the DocuSign UI in your applications. If the recipient is a signer, then the view will provide the signing ceremony.  ###### Note: Please redirect the client to the URL. iFrames should not be used, especially if the recipient may be using a mobile or tablet.   This method is only used with envelopes in the &#x60;sent&#x60; status.  Your application is responsible for authenticating the identity of the recipient or signer when you use this method. Use the parameters &#x60;assertionId&#x60;, &#x60;authenticationInstant&#x60;, &#x60;authenticationMethod&#x60;, &#x60;clientUserId&#x60;, and &#x60;securityDomain&#x60; to record information on how the recipient was authenticated. At a minimum, &#x60;authenticationMethod&#x60; and &#x60;clientUserId&#x60; are required. The information that you provide is included in the envelope&#39;s certificate of completion.  ## The event status parameter After the signer completes or ends the signing ceremony, DocuSign will redirect the user&#39;s browser back to your app via the &#x60;returnUrl&#x60; that you supply. DocuSIgn appends an &#x60;event&#x60; query parameter to the URL with the outcome of the signing ceremony. Your app should use the event parameter to determine the next step for the envelope. Don&#39;t fetch the envelope&#39;s status via Envelopes: get or a similar method; that could break the DocuSign rule against polling.  ## The URL is time-limited The URL returned by this method is valid for one use. It must be used/displayed within a couple of minutes after being generated. Once the recipient is redirected to the recipient view, they must interact with the DocuSign system periodically or their session will time out.  Because the URL is time-limited, it should not be stored or sent via email. Immediately redirect the user&#39;s browser to the URL after you receive it.  If you want to invite someone to an embedded signing session via email, the email invitation&#39;s URL must be to your application. When invoked, your app should request a recipientView URL from DocuSign and then redirect the signer to that URL.  ## Maintaining State After the recipient completes the recipient view (or signing ceremony), they are redirected to your application. Your application can recover state information about the transaction by storing information in a cookie, or by including query parameters in the &#x60;returnUrl&#x60; field. Eg, &#x60;https://myapp.eg.com/docusign_return?myState&#x3D;12345&#x60; When the user is redirected to your app, the &#x60;event&#x60; query parameter will be appended. In this example, prevent spoofing by not using a guessable value as the state value.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :recipient_view_request (RecipientViewRequest): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeViews{}} on success
  {:error, info} on failure
  """
  @spec views_post_envelope_recipient_view(DocuSign.Connection.t(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.EnvelopeViews.t()} | {:error, Tesla.Env.t()}
  def views_post_envelope_recipient_view(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      recipientViewRequest: :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/views/recipient")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeViews{})
  end

  @doc """
  Returns a URL to the sender view UI.
  Returns a URL that enables you to embed the sender view of the DocuSign UI in your applications.   The returned URL can only be redirected to immediately after it is generated. It can only be used once. Therefore, request the URL immediately before you redirect your user to it.  For the best user experience, don&#39;t use an iFrame. For iOS devices DocuSign recommends using a WebView.  Multiple solutions are available for maintaining your client state. See the \&quot;Maintaining State\&quot; section of the [Embedded Signing introduction.](https://developers.docusign.com/esign-rest-api/guides/embedded-signing)  After the user has completed the sending view, their browser is redirected to the &#x60;returnUrl&#x60; you supplied.  By default, if the envelope already contains one or more documents, DocuSign will initially show the document tagging view when you redirect to the URL.   To start with the envelope&#39;s recipients and documents view instead, examine the URL in the method&#39;s response.  Then change the query parameter from &#x60;send&#x3D;1&#x60; to &#x60;send&#x3D;0&#x60; to start with the recipients/documents view.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :return_url_request (ReturnUrlRequest): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeViews{}} on success
  {:error, info} on failure
  """
  @spec views_post_envelope_sender_view(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.EnvelopeViews.t()} | {:error, Tesla.Env.t()}
  def views_post_envelope_sender_view(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      returnUrlRequest: :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/views/sender")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeViews{})
  end
end
