defmodule BitBox.Mixfile do
  use Mix.Project

  def project do
    [app: :bitbox,
     version: "0.0.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  def package do
    [
      maintainers: ["Akul Sahariya"],
      licenses: ["GPLV3"],
      links: %{"GitHub" => "https://github.com/codecakes/bitwrap-engine"}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:earmark, ">= 0.0.0", only: :dev},
    # in order to generate docs I need Exdoc
    {:ex_doc, "~> 0.10", only: :dev}]
  end
end
