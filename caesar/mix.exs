defmodule Caesar.MixProject do
  use Mix.Project

  def project do
    [
      app: :caesar,
      escript: escript_config(),
      version: "v0.1.0",
      source_url: "https://github.com/Emperor-Jarlemagne/PotionMaking101/tree/main/caesar",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
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
      {:caesar, "~> 0.1.0"},
      {:dep_from_hexpm, "~> 0.3.0"},
      {:dep_from_git, git: "https://github.com/Emperor-Jarlemagne/PotionMaking101.git", tag: "v0.1.0"}
    ]
  end
  defp escript_config do
    [main_module: Caesar]
  end
end
