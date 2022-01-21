defmodule NrPhoenixDemo.Repo do
  use Ecto.Repo,
    otp_app: :nr_phoenix_demo,
    adapter: Ecto.Adapters.Postgres
end
