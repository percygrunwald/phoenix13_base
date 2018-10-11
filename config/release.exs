use Mix.Config

config :phoenix13_base, :env, (System.get_env("ENV") || "prod") |> String.to_atom()

config :phoenix13_base, Phoenix13Base.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json",
  server: true
