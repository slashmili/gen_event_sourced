defmodule GenEventSourced.MixProject do
  use Mix.Project

  def project do
    [
      app: :gen_event_sourced,
      name: "GenEventSourced",
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      source_url: "https://github.com/slashmili/gen_event_sourced"
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Milad Rastian"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/slashmili/gen_event_sourced"},
      files: ~w(lib LICENSE mix.exs README.md)
    ]
  end

  defp description do
    """
    GenEventSourced is a behaviour for event sourcing.
    """
  end
end
