defmodule Bunch.Native.Mixfile do
  use Mix.Project

  @version "0.5.1"
  @github_url "https://github.com/membraneframework/bunch-native"

  def project do
    [
      app: :bunch_native,
      version: @version,
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:bundlex] ++ Mix.compilers(),
      deps: deps(),

      # hex
      description: "Native C helpers (NIFs) for Membrane plugins.",
      package: package(),

      # docs
      name: "Bunch Native",
      source_url: @github_url,
      docs: docs(),
      homepage_url: "https://membrane.stream",
      aliases: [docs: ["docs", &prepend_llms_links/1]]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      maintainers: ["Membrane Team"],
      licenses: ["Apache 2.0"],
      files: ["c_src", "mix.exs", "README*", "LICENSE*", ".formatter.exs", "bundlex.exs"],
      links: %{
        "GitHub" => @github_url,
        "Membrane Framework Homepage" => "https://membraneframework.org"
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md", "LICENSE"],
      source_ref: "v#{@version}"
    ]
  end

  defp deps() do
    [
      {:ex_doc, "~> 0.40", only: :dev, runtime: false},
      {:bundlex, "~> 1.0"}
    ]
  end

defp prepend_llms_links(_) do
  path = "doc/llms.txt"

  if File.exists?(path) do
    existing = File.read!(path)

    header =
      "- [Membrane Core AI Skill](https://hexdocs.pm/membrane_core/skill.md)\n" <>
        "- [Membrane Core](https://hexdocs.pm/membrane_core/llms.txt)\n\n"

    File.write!(path, header <> existing)
  end
end

end
