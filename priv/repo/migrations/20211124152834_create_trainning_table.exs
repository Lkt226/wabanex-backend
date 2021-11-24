defmodule WabanexBack.Repo.Migrations.CreateTrainningTable do
  use Ecto.Migration

  def change do
    create table(:trainnings) do
      add :start_date, :date
      add :end_date, :date
      add :user_id, references(:users)

      timestamps()
    end
  end
end
