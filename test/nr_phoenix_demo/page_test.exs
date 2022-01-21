defmodule NrPhoenixDemo.PageTest do
  use NrPhoenixDemo.DataCase

  alias NrPhoenixDemo.Page

  describe "make_trouble" do
    alias NrPhoenixDemo.Page.Trouble

    import NrPhoenixDemo.PageFixtures

    @invalid_attrs %{}

    test "list_make_trouble/0 returns all make_trouble" do
      trouble = trouble_fixture()
      assert Page.list_make_trouble() == [trouble]
    end

    test "get_trouble!/1 returns the trouble with given id" do
      trouble = trouble_fixture()
      assert Page.get_trouble!(trouble.id) == trouble
    end

    test "create_trouble/1 with valid data creates a trouble" do
      valid_attrs = %{}

      assert {:ok, %Trouble{} = trouble} = Page.create_trouble(valid_attrs)
    end

    test "create_trouble/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Page.create_trouble(@invalid_attrs)
    end

    test "update_trouble/2 with valid data updates the trouble" do
      trouble = trouble_fixture()
      update_attrs = %{}

      assert {:ok, %Trouble{} = trouble} = Page.update_trouble(trouble, update_attrs)
    end

    test "update_trouble/2 with invalid data returns error changeset" do
      trouble = trouble_fixture()
      assert {:error, %Ecto.Changeset{}} = Page.update_trouble(trouble, @invalid_attrs)
      assert trouble == Page.get_trouble!(trouble.id)
    end

    test "delete_trouble/1 deletes the trouble" do
      trouble = trouble_fixture()
      assert {:ok, %Trouble{}} = Page.delete_trouble(trouble)
      assert_raise Ecto.NoResultsError, fn -> Page.get_trouble!(trouble.id) end
    end

    test "change_trouble/1 returns a trouble changeset" do
      trouble = trouble_fixture()
      assert %Ecto.Changeset{} = Page.change_trouble(trouble)
    end
  end
end
