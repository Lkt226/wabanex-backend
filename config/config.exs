# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wabanexBack,
  ecto_repos: [WabanexBack.Repo]

config :wabanexBack,WabanexBack.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :wabanexBack, WabanexBackWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CnCm/JBnRsCaWHVBnZD9sEb2PvpqGYX2LZyTI6UL5Ka87jDnBlZDiy5WYiAQHQF5",
  render_errors: [view: WabanexBackWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: WabanexBack.PubSub,
  live_view: [signing_salt: "j3hTTxyz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
