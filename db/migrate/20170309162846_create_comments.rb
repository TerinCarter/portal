class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :user_id
      t.integer :program_id

      t.timestamps null: false
    end
  add_index :comments, :user_id
  add_index :comments, :program_id
  add_foreign_key :comments, :users
  add_foreign_key :comments, :programs
  end
end
