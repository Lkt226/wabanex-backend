defmodule WabanexBack.Repo do
  use Ecto.Repo,
    otp_app: :wabanexBack,
    adapter: Ecto.Adapters.Postgres
end
