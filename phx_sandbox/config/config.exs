# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_sandbox,
  ecto_repos: [PhxSandbox.Repo]

# Configures the endpoint
config :phx_sandbox, PhxSandboxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kH1V+hra3M6Q5JEi/zTrV2ggDzKYkC9BaZd6S9PlDbE2nX+dC/4I59F04LZh7v4P",
  render_errors: [view: PhxSandboxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxSandbox.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "wt3BH592"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
