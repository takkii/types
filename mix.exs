defmodule Shiva.MixProject do
  use Mix.Project

  def project do
    [
      app: :shiva,
      version: "0.0.3",
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_options: [warnings_as_errors: warnings_as_errors(Mix.env())]
    ]
  end

  defp warnings_as_errors(:test), do: false
  defp warnings_as_errors(_), do: true

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 2.0"},
      {:json, "~> 1.4"}
    ]
  end
end
