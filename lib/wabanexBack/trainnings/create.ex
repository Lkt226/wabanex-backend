defmodule WabanexBack.Trainnings.Create do
  alias WabanexBack.{Trainning, Repo}

  def call(params) do
    params
    |> Trainning.changeset()
    |> Repo.insert()
  end
end
