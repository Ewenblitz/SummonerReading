class AddUsersToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_reference :favorites, :users, foreign_key: true
  end
end
