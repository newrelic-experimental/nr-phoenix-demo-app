# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :nr_phoenix_demo,
  ecto_repos: [NrPhoenixDemo.Repo]

# Configures the endpoint
config :nr_phoenix_demo, NrPhoenixDemoWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: NrPhoenixDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: NrPhoenixDemo.PubSub,
  live_view: [signing_salt: "FItfa2uZ"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :nr_phoenix_demo, NrPhoenixDemo.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.14.0",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configures the New Relic Elixir agent
config :new_relic_agent,
  app_name: "nr_phoenix_demo",
  license_key: System.get_env("NEW_RELIC_LICENSE_KEY")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
