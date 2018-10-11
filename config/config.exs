use Mix.Config

config :phoenix13_base, Phoenix13BaseWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: Phoenix13BaseWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenix13Base.PubSub, adapter: Phoenix.PubSub.PG2]

config :phoenix13_base,
  ecto_repos: [Phoenix13Base.Repo]

config :phoenix13_base, Phoenix13Base.Repo,
  adapter: Ecto.Adapters.Postgres,
  pool_size: 10

config :logger,
  backends: [:console],
  utc_log: true

config :logger, :console,
  metadata: [:module, :function],
  format: "$dateT$timeZ $metadata[$level] $message\n"

if Enum.member?([:dev, :test], Mix.env()) do
  import_config("#{Mix.env()}.exs")
else
  import_config("release.exs")
end
