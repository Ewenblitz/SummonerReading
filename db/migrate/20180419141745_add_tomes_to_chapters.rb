class AddTomesToChapters < ActiveRecord::Migration[5.1]
  def change
    add_reference :chapters, :tomes, foreign_key: true
  end
end
