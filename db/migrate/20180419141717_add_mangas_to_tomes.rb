class AddMangasToTomes < ActiveRecord::Migration[5.1]
  def change
    add_reference :tomes, :manga, foreign_key: true
  end
end
