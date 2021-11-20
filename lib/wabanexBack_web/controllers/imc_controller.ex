defmodule WabanexBackWeb.IMCController do
  use WabanexBackWeb, :controller

  alias WabanexBack.IMC

  def index(conn, params) do
    params
    |> IMC.calculate()
    |> handle_response(conn)
  end

  defp handle_response({:ok, result}, conn), do: render_response(conn, result, :ok)

  defp handle_response({:error, reason}, conn), do: render_response(conn, reason, :bad_request)

  defp render_response(conn, response, status) do
    conn
    |> put_status(status)
    |> json(%{response: response})
  end
end
