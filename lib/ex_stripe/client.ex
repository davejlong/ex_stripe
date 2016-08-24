defmodule ExStripe.Client do
  @moduledoc """
  Client to connect to the Stripe API through.
  """

  use HTTPoison.Base

  @doc """
  Builds a URL for a Stripe resource.

  ## Examples

      iex> ExStripe.Client.process_url("/foobar")
      "https://api.stripe.com/foobar"
  """
  def process_url(url) do
    ExStripe.api_host <> url
  end

  @doc """
  Builds the headers for the request, mergining in the API key.

  ## Examples

      iex> ExStripe.Client.process_request_headers([])
      [{"Authorization", "Bearer sk_test_foobar"}]
  """
  def process_request_headers(headers) do
    headers ++ [{"Authorization", "Bearer " <> ExStripe.Config.api_key}]
  end

  @doc """
  Converts body of request into Elixir objects

  ## Examples

      iex> ExStripe.Client.process_response_body(~s({"foo": 1}))
      %{"foo" => 1}
  """
  def process_response_body(body) do
    body
    |> Poison.decode!
  end
end
