# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_gh_action_test,
  ecto_repos: [PhxGhActionTest.Repo]

# Configures the endpoint
config :phx_gh_action_test, PhxGhActionTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "k1uL1ZZ0+5BglF8FIJBkUk2Vq3CLtalRUXshzgYcGfZa7aFDuORklJZmfq0+nVyM",
  render_errors: [view: PhxGhActionTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxGhActionTest.PubSub,
  live_view: [signing_salt: "n3wYk5NM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
