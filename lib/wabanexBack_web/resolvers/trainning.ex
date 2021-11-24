defmodule WabanexBackWeb.Resolvers.Trainning do
  def create(%{input: params}, _context), do: WabanexBack.Trainnings.Create.call(params)
end
