# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graph_sinth,
  ecto_repos: [GraphSinth.Repo]

# Configures the endpoint
config :graph_sinth, GraphSinth.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JhOVwv6gJMU84nzranqTSXYZJsJbyXML2d9JU90w2twv3U+Uuvula/Ck1b7u6ZoW",
  render_errors: [view: GraphSinth.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GraphSinth.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
