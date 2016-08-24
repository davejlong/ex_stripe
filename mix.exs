defmodule ExStripe.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_stripe,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test],
     dialyzer: [
        # plt_file: "#{System.get_env("HOME")}/#{plt_filename}",
        flags: ["--no_native", "-Wno_match", "-Wno_return"]
     ]]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison, :poison]]
  end

  defp deps do
    [{:httpoison, "~> 0.9.0"},
     {:poison, "~> 2.2.0"},
     {:dialyxir, "~> 0.3", only: [:dev, :test]},
     {:ex_doc, "~> 0.11", only: [:dev, :test, :docs]},
     {:earmark, ">= 0.0.0", only: [:dev, :test, :docs]},
     {:inch_ex, ">= 0.0.0", only: :docs},
     {:excoveralls, "~> 0.4", only: :test}]
  end
end
