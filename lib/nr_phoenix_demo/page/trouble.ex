defmodule NrPhoenixDemo.Page.Trouble do
  use Ecto.Schema
  import Ecto.Changeset

  schema "make_trouble" do


    timestamps()
  end

  @doc false
  def changeset(trouble, attrs) do
    trouble
    |> cast(attrs, [])
    |> validate_required([])
  end
end
