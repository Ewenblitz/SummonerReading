class AddChaptersToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :chapters, foreign_key: true
  end
end
