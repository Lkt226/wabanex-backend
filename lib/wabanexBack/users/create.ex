defmodule WabanexBack.Users.Create do
  alias WabanexBack.{User, Repo}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
