class AddTomesToChapters < ActiveRecord::Migration[5.1]
  def change
    add_reference :chapters, :tome, foreign_key: true
  end
end
