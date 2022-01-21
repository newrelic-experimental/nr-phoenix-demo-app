defmodule NrPhoenixDemo.Repo.Migrations.CreateMakeTrouble do
  use Ecto.Migration

  def change do
    create table(:make_trouble) do

      timestamps()
    end
  end
end
