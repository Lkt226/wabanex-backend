defmodule WabanexBackWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias WabanexBackWeb.Resolvers

  alias Crudry.Middlewares.TranslateErrors

  alias Resolvers.User, as: UserResolver
  alias Resolvers.Trainning, as: TrainningResolver

  alias WabanexBackWeb.Schema.Types

  import_types Types.Custom.UUID4

  import_types Types.User
  import_types Types.Trainning

  object :root_query do
    field :get_user, :user do
      arg :id, non_null(:uuid4)

      resolve &UserResolver.get/2
    end
  end

  object :root_mutation do

    field :create_user, :user do
      arg :input, non_null(:create_user_input)

      resolve &UserResolver.create/2
      middleware TranslateErrors
    end

    field :create_trainning, :trainning do
      arg :input, non_null(:create_trainning_input)

      resolve &TrainningResolver.create/2
      middleware TranslateErrors
    end

  end

end
