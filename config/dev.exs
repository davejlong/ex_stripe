use Mix.Config

config :ex_stripe, api_key: System.get_env("STRIPE_API_KEY")
