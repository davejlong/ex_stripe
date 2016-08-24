defmodule ExStripeTest do
  use ExUnit.Case
  doctest ExStripe

  test "that client uses api.stripe.com" do
    assert ExStripe.api_host == "https://api.stripe.com"
  end
end
