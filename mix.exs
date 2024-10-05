defmodule HelloExvcr.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello_exvcr,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:exvcr, "~> 0.15.2"},
      {:mix_test_watch, "~> 1.2"},
      {:req, "~> 0.5.6"}
    ]
  end
end
