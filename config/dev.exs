# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# Do not include metadata nor timestamps in development logs
config :logger, 
    level: :info, 
    backends: [:console],
    format: "[$level] $message\n"