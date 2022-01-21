defmodule NrPhoenixDemo.Page do
  @moduledoc """
  The Page context.
  """

  import Ecto.Query, warn: false
  alias NrPhoenixDemo.Repo

  alias NrPhoenixDemo.Page.Trouble

  @doc """
  Returns the list of make_trouble.

  ## Examples

      iex> list_make_trouble()
      [%Trouble{}, ...]

  """
  def list_make_trouble do
    Repo.all(Trouble)
  end

  @doc """
  Gets a single trouble.

  Raises `Ecto.NoResultsError` if the Trouble does not exist.

  ## Examples

      iex> get_trouble!(123)
      %Trouble{}

      iex> get_trouble!(456)
      ** (Ecto.NoResultsError)

  """
  def get_trouble!(id), do: Repo.get!(Trouble, id)

  @doc """
  Creates a trouble.

  ## Examples

      iex> create_trouble(%{field: value})
      {:ok, %Trouble{}}

      iex> create_trouble(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_trouble(attrs \\ %{}) do
    %Trouble{}
    |> Trouble.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a trouble.

  ## Examples

      iex> update_trouble(trouble, %{field: new_value})
      {:ok, %Trouble{}}

      iex> update_trouble(trouble, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_trouble(%Trouble{} = trouble, attrs) do
    trouble
    |> Trouble.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a trouble.

  ## Examples

      iex> delete_trouble(trouble)
      {:ok, %Trouble{}}

      iex> delete_trouble(trouble)
      {:error, %Ecto.Changeset{}}

  """
  def delete_trouble(%Trouble{} = trouble) do
    Repo.delete(trouble)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking trouble changes.

  ## Examples

      iex> change_trouble(trouble)
      %Ecto.Changeset{data: %Trouble{}}

  """
  def change_trouble(%Trouble{} = trouble, attrs \\ %{}) do
    Trouble.changeset(trouble, attrs)
  end
end
