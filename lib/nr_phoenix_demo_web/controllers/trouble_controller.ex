defmodule NrPhoenixDemoWeb.TroubleController do
  use NrPhoenixDemoWeb, :controller

  alias NrPhoenixDemo.Page
  alias NrPhoenixDemo.Page.Trouble

  def index(conn, _params) do
    make_trouble = Page.list_make_trouble()
    render(conn, "index.html", make_trouble: make_trouble)
    no_method_with_this_name()
  end

  def new(conn, _params) do
    changeset = Page.change_trouble(%Trouble{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"trouble" => trouble_params}) do
    case Page.create_trouble(trouble_params) do
      {:ok, trouble} ->
        conn
        |> put_flash(:info, "Trouble created successfully.")
        |> redirect(to: Routes.trouble_path(conn, :show, trouble))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    trouble = Page.get_trouble!(id)
    render(conn, "show.html", trouble: trouble)
  end

  def edit(conn, %{"id" => id}) do
    trouble = Page.get_trouble!(id)
    changeset = Page.change_trouble(trouble)
    render(conn, "edit.html", trouble: trouble, changeset: changeset)
  end

  def update(conn, %{"id" => id, "trouble" => trouble_params}) do
    trouble = Page.get_trouble!(id)

    case Page.update_trouble(trouble, trouble_params) do
      {:ok, trouble} ->
        conn
        |> put_flash(:info, "Trouble updated successfully.")
        |> redirect(to: Routes.trouble_path(conn, :show, trouble))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", trouble: trouble, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    trouble = Page.get_trouble!(id)
    {:ok, _trouble} = Page.delete_trouble(trouble)

    conn
    |> put_flash(:info, "Trouble deleted successfully.")
    |> redirect(to: Routes.trouble_path(conn, :index))
  end
end
