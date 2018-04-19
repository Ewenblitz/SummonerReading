class AddMangasToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_reference :favorites, :mangas, foreign_key: true
  end
end
