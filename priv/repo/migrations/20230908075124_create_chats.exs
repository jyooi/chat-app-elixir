defmodule ElixirChatApp.Repo.Migrations.CreateChats do
  use Ecto.Migration

  def change do
    create table(:chats) do
      add :name, :string
      add :message, :string

      timestamps()
    end

  end
end
