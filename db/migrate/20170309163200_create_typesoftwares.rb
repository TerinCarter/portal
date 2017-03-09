class CreateTypesoftwares < ActiveRecord::Migration
  def change
    create_table :typesoftwares do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
