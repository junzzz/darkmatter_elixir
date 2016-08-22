# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :darkmatter_elixir,
  ecto_repos: [DarkmatterElixir.Repo]

# Configures the endpoint
config :darkmatter_elixir, DarkmatterElixir.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BMeH4xc26folUYs3CDuOMG2R48JQv78zlZVGLrhYmOv5SrCvDOfW8GjgOfo5wr20",
  render_errors: [view: DarkmatterElixir.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DarkmatterElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
