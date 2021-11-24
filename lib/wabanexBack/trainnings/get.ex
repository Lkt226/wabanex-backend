defmodule WabanexBack.Trainnings.Get do
  alias WabanexBack.{Trainning, Repo}
  alias Ecto.UUID

  def call(id) do
    id
    |> UUID.cast()
    |> handle_response()
  end

  defp handle_response(:error), do: {:error, "UUID invalida"}

  defp handle_response({:ok, uuid}) do
    case Repo.get(Trainning, uuid) do
      nil -> {:error, "Usuario não encontrado."}
      user -> {:ok, user}
    end
  end
end
