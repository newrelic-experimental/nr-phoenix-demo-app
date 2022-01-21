defmodule NrPhoenixDemo.PageFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `NrPhoenixDemo.Page` context.
  """

  @doc """
  Generate a trouble.
  """
  def trouble_fixture(attrs \\ %{}) do
    {:ok, trouble} =
      attrs
      |> Enum.into(%{

      })
      |> NrPhoenixDemo.Page.create_trouble()

    trouble
  end
end
