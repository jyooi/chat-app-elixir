defmodule ElixirChatApp.Repo do
  use Ecto.Repo,
    otp_app: :elixirChatApp,
    adapter: Ecto.Adapters.Postgres
end
