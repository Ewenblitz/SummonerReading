class CreateTomes < ActiveRecord::Migration[5.1]
  def change
    create_table :tomes, id: false do |t|
      t.primary_key :id
      t.string :name
      t.string :number
      t.integer :nb_chapter
      
      t.timestamp
    end
  end
end
