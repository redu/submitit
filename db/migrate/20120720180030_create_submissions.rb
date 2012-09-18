class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.references :user
      t.references :space
      t.integer :score
      t.string :file

      t.timestamps
    end
    add_index :submissions, :user_id
  end
end
