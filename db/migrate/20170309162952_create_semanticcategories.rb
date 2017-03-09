class CreateSemanticcategories < ActiveRecord::Migration
  def change
    create_table :semanticcategories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
