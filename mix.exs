defmodule EctoPtbrLocalization.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_ptbr_localization,
      package: package(),
      description: description(),
      version: "0.1.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      maintainers: ["Mathews Lima"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/maal26/ecto-pt-BR-localization"}
    ]
  end

  defp description do
    "Publish ecto validation errors in pt_BR language."
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
