class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :login
      t.string :name
      t.integer :uid
      t.string :token

      t.timestamps
    end
    add_index :users, :uid
    add_index :users, :token
  end
end
