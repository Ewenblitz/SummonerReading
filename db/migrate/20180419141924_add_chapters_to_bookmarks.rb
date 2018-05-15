class AddChaptersToBookmarks < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookmarks, :chapter, foreign_key: true
  end
end
