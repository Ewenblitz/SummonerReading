class AddMangasToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_reference :favorites, :manga, foreign_key: true
  end
end
