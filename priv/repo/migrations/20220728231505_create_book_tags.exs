defmodule BookSearch.Repo.Migrations.CreateBookTags do
  use Ecto.Migration

  def change do
    create table(:book_tags) do
      add :book_id, references(:books, on_delete: :delete_all), null: :false
      add :tag_id, references(:tags, on_delete: :delete_all), null: false
    end
  end
end
