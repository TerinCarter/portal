class CreateProgramms < ActiveRecord::Migration
  def change
    create_table :programms do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
