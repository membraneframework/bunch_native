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
        src_base: "bunch/common/bunch",
        sources: ["bunch.c"]
      ],
      bunch_nif: [
        src_base: "bunch/nif/bunch",
        sources: ["bunch.c", "../../common/bunch/bunch.c"]
      ]
    ]
  end
end
