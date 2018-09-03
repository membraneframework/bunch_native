defmodule Bunch.Native.BundlexProject do
  use Bundlex.Project

  def project do
    [
      nifs: nifs(Bundlex.platform())
    ]
  end

  defp nifs(_platform) do
    [
      bunch: [
        src_base: "bunch",
        export_only?: Mix.env() != :test,
        sources: ["bunch.c"]
      ]
    ]
  end
end
