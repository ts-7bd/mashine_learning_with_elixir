defmodule MashineLearningWithElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :mashine_learning_with_elixir,
      version: "0.1.0",
      elixir: "~> 1.12",
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

  # Run "mix help deps" to learn about dependencies.
  # Elixir client for Google's XLA (Accelerated Linear Algebra).
  # Elixir client for LibTorch (from PyTorch)
  # Nx is a multi-dimensional tensors library for Elixir with multi-staged compilation to the CPU/GPU
  defp deps do
    [
      # {:torchx, "~> 0.1.0-dev", github: "elixir-nx/nx", sparse: "torchx"},
      {:axon, "~> 0.1.0-dev", github: "elixir-nx/axon", branch: "main"},
      {:exla, "~> 0.1.0-dev", github: "elixir-nx/nx", sparse: "exla", override: true},
      {:nx, "~> 0.1.0-dev", github: "elixir-nx/nx", sparse: "nx", override: true}    ]
  end
end
