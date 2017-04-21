class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :password
      t.string :email
      t.integer :role_id

      t.timestamps null: false
    end
  
  add_index :users, :role_id
  add_foreign_key :users, :roles
  end
end
