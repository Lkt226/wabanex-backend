defmodule WabanexBackWeb.Schema.Types.Trainning do
  use Absinthe.Schema.Notation

  import_types WabanexBackWeb.Schema.Types.Exercises

  @desc "Logic trainning representation"
  object :trainning do
    field :id, non_null(:uuid4)
    field :start_date, non_null(:string)
    field :end_date, non_null(:string)

    field :exercise, list_of(:exercise)
  end

  @desc "Logic for create trainning"
  input_object :create_trainning_input do
    field :user_id, non_null(:uuid4)
    field :start_date, non_null(:string)
    field :end_date, non_null(:string)

    field :exercise, list_of(:create_exercise_input)
  end
end
