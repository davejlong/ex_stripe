defmodule ExStripe.Config do
  @moduledoc """
  Stores configuration variables used to communicate with Stripe's API
  """

  @doc """
  Returns the API key for your stripe account. Set it in `config/config.exs`:

      config :ex_stripe, api_key: "sk_test_foobar"

  Find your API key by opening your Stripe account settings and clicking on the
  API Keys link. The Secret Key is used as your API key.

  ## Examples

      iex> Application.put_env(:ex_stripe, :api_key, "sk_test_foobar")
      iex> ExStripe.Config.api_key
      "sk_test_foobar"
  """
  def api_key, do: Application.get_env(:ex_stripe, :api_key)
end
