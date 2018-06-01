class CreateMangas < ActiveRecord::Migration[5.1]
  def change
    create_table :mangas, id: false do |t|
      t.primary_key :id
      t.string :name
      t.string :athor
      t.string :synopsys
      t.string :photo
      t.integer :nb_tome

      t.timestamps
    end
  end
end
