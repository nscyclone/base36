defmodule Base36.Mixfile do
  use Mix.Project

  @version "1.0.0"
  @github "https://github.com/nscyclone/base36"

  def project do
    [app: :base36,
     version: @version,
     elixir: "~> 1.0",
     name: "Base36",
     description: description(),
     package: package(),
     source_url: @github,
     docs: [extras: ["README.md"],
            main: "README",
            source_ref: "v#{@version}",
            source_url: @github],
     deps: deps()]
  end

  def application, do: []

  defp deps do
    [{:custom_base, "~> 0.2.1"},
     {:ex_doc, "~> 0.29", only: :dev},
     {:earmark, "~> 1.4", only: :dev}]
  end

  defp description do
    "Base36 encoder/decoder."
  end

  defp package do
    [maintainers: ["nscyclone"],
     files: ["lib", "mix.exs", "README.md", "LICENSE"],
     licenses: ["MIT"],
     links: %{"Github" => @github}]
  end
end
