# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :basichat,
  ecto_repos: [Basichat.Repo]

# Configures the endpoint
config :basichat, Basichat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NmlaLYe2HStLWHBQLn6C6O1O+y39M6EkkSBFImKeqTAnyLnX8O+gte36iO9F6ZNm",
  render_errors: [view: Basichat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Basichat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
