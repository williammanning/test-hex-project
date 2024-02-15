defmodule Todos.MixProject do
  use Mix.Project

  def project do
    [
      app: :todos,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      name: "todos",
      source_url: "https://github.com/williammanning/test-hex-project"
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:plug, ">= 0.4.0"},
      {:telemetry, "~> 1.2"},
      {:mimerl, "~> 1.2"},
      {:jason, "~> 1.4"},
      {:parse_trans, "~> 3.4"},
      {:certifi, "~> 2.12"},
      {:hackney, "~> 1.20"}
    ]
  end

  defp package() do
    [
     name: "todos",
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["William Manning"],
     licenses: ["GPL 3.0"],
     description: "Test Hex Project",
     links: %{"GitHub" => "https://github.com/williammanning/test-hex-project"},
     organization: "me"
    ]
  end
end
