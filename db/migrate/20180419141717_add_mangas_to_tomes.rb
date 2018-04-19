class AddMangasToTomes < ActiveRecord::Migration[5.1]
  def change
    add_reference :tomes, :mangas, foreign_key: true
  end
end
