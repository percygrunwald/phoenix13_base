# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix13_base,
  ecto_repos: [Phoenix13Base.Repo]

# Configures the endpoint
config :phoenix13_base, Phoenix13BaseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9Rml7+kfKSMkje7TdnO4X/tKXuXF+O/8I1SV5wEgZHC6/RunONZcS8cFz+LpybU6",
  render_errors: [view: Phoenix13BaseWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenix13Base.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
