use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix13_base, Phoenix13BaseWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix13_base, Phoenix13Base.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix13_base_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
