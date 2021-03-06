defmodule BambooPostmark.Mixfile do
  use Mix.Project

  @project_url "https://github.com/txquang22/bamboo_postmark"

  def project do
    [app: :bamboo_postmark,
     version: "0.4.1",
     elixir: "~> 1.2",
     source_url: @project_url,
     homepage_url: @project_url,
     name: "Bamboo Postmark Adapter",
     description: "A Bamboo adapter for Postmark",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger, :hackney]]
  end

  defp deps do
     [{:hackney, "~> 1.6"},
     {:poison, ">= 1.5.0"},
     {:plug, "~> 1.0"},
     {:cowboy, "~> 1.0", only: [:test, :dev]},
     {:bamboo, "~> 1.0.0-rc.1"},
     {:ex_doc, "~> 0.13", only: :dev}]
  end

  defp package do
    [
      maintainers: ["Pablo Cárdenas"],
      licenses: ["MIT"],
      links: %{"GitHub" => @project_url}
    ]
  end
end
