class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters, id: false do |t|
      t.primary_key :id
      t.string :name
      t.integer :number
      t.integer :pages

      t.timestamp
    end
  end
end
