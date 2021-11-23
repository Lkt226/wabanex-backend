defmodule WabanexBackWeb.Resolvers.User do
  def get(%{id: user_id}, _context), do: WabanexBack.Users.Get.call(user_id)
  def create(%{input: params}, _context), do: WabanexBack.Users.Create.call(params)
end
