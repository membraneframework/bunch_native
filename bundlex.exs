defmodule Bunch.Native.BundlexProject do
  use Bundlex.Project

  def project do
    [
      libs: libs()
    ]
  end

  defp libs do
    [
      bunch: [
        src_base: "bunch",
        sources: ["bunch.c"]
      ]
    ]
  end
end
