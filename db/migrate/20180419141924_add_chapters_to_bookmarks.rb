class AddChaptersToBookmarks < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookmarks, :chapters, foreign_key: true
  end
end
