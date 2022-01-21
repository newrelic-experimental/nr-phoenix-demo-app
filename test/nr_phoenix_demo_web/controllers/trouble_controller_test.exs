defmodule NrPhoenixDemoWeb.TroubleControllerTest do
  use NrPhoenixDemoWeb.ConnCase

  import NrPhoenixDemo.PageFixtures

  @create_attrs %{}
  @update_attrs %{}
  @invalid_attrs %{}

  describe "index" do
    test "lists all make_trouble", %{conn: conn} do
      conn = get(conn, Routes.trouble_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Make trouble"
    end
  end

  describe "new trouble" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.trouble_path(conn, :new))
      assert html_response(conn, 200) =~ "New Trouble"
    end
  end

  describe "create trouble" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.trouble_path(conn, :create), trouble: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.trouble_path(conn, :show, id)

      conn = get(conn, Routes.trouble_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Trouble"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.trouble_path(conn, :create), trouble: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Trouble"
    end
  end

  describe "edit trouble" do
    setup [:create_trouble]

    test "renders form for editing chosen trouble", %{conn: conn, trouble: trouble} do
      conn = get(conn, Routes.trouble_path(conn, :edit, trouble))
      assert html_response(conn, 200) =~ "Edit Trouble"
    end
  end

  describe "update trouble" do
    setup [:create_trouble]

    test "redirects when data is valid", %{conn: conn, trouble: trouble} do
      conn = put(conn, Routes.trouble_path(conn, :update, trouble), trouble: @update_attrs)
      assert redirected_to(conn) == Routes.trouble_path(conn, :show, trouble)

      conn = get(conn, Routes.trouble_path(conn, :show, trouble))
      assert html_response(conn, 200)
    end

    test "renders errors when data is invalid", %{conn: conn, trouble: trouble} do
      conn = put(conn, Routes.trouble_path(conn, :update, trouble), trouble: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Trouble"
    end
  end

  describe "delete trouble" do
    setup [:create_trouble]

    test "deletes chosen trouble", %{conn: conn, trouble: trouble} do
      conn = delete(conn, Routes.trouble_path(conn, :delete, trouble))
      assert redirected_to(conn) == Routes.trouble_path(conn, :index)

      assert_error_sent 404, fn ->
        get(conn, Routes.trouble_path(conn, :show, trouble))
      end
    end
  end

  defp create_trouble(_) do
    trouble = trouble_fixture()
    %{trouble: trouble}
  end
end
