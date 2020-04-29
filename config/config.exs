# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_div_poof,
  ecto_repos: [LiveDivPoof.Repo]

# Configures the endpoint
config :live_div_poof, LiveDivPoofWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7xyb89Orl9DbSEHd3jAHJzrbsnVhLklcA3MNjtDjYHRZpKo5wXeh+tUpoIg2c63n",
  render_errors: [view: LiveDivPoofWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveDivPoof.PubSub,
  live_view: [signing_salt: "+zgVv4n8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
