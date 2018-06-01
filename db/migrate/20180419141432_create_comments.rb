class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments, id: false do |t|
      t.timestamps
      t.primary_key :id
      t.string :commentary
      t.integer :rating

    end
  end
end
