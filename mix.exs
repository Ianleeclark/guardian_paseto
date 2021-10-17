defmodule GuardianPaseto.MixProject do
  use Mix.Project

  def project do
    [
      app: :guardian_paseto,
      version: "0.2.1",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:guardian, "~> 1.0"},
      {:paseto, "~> 1.3.1"},
      {:poison, "~>3.1"},
      {:credo, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:stream_data, "~> 0.1", only: :test},
      {:elixir_uuid, "~> 1.2"},
      {:ex_doc, "~> 0.19.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    "A backend for validating issued Paseto through Guardian."
  end

  defp package do
    [
      name: "guardian_paseto",
      files: ["lib", "mix.exs", "LICENSE"],
      maintainers: ["Ian Lee Clark"],
      licenses: ["BSD 3-clause"],
      links: %{"Github" => "https://github.com/GrappigPanda/guardian_paseto"}
    ]
  end
end
