defmodule WabanexBack.Users.Get do
  alias WabanexBack.{User, Repo}
  alias Ecto.UUID

  def call(id) do
    id
    |> UUID.cast()
    |> handle_response()

  end

  defp handle_response(:error), do: {:error, "UUID invalida"}

  defp handle_response({:ok, uuid}) do
    case Repo.get(User, uuid) do
      nil -> {:error, "Usuario não encontrado."}
      user -> {:ok, user}
    end
  end
end
