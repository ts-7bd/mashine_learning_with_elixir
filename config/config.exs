# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
#
# Dynamic values should be set via ENVIRONMENT VARIABLES

# Note: "config.exs" sets the configuration for the "development" environment.

import Config

config :nx, :default_defn_options, [compiler: EXLA]

# To use cuda/rocm/tpu, set the client too
# config :nx, :default_defn_options, [compiler: EXLA, client: :cuda]
