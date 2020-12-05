# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :todolist, TodolistWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EJtWMZM9Xv9l77N8k4FaGoPpMQxKKOSLZtUKnFGkyf8xcIVv+810X4Deu73DH8rh",
  render_errors: [view: TodolistWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Todolist.PubSub,
  live_view: [signing_salt: "x3GozY3M"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
