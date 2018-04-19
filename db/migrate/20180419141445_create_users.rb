class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: false do |t|
      t.primary_key :id
      t.string :username
      t.string :email
      t.string :password

      t.timestamp
    end
  end
end
