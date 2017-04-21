class CreateProgramsSemanticCategoriesJoinTable < ActiveRecord::Migration
  def change
    create_table :programs_semanticcategories, id:false do |t|
      t.integer :program_id
      t.integer :semanticcategory_id
    end

  add_index :programs_semanticcategories, :program_id
  add_index :programs_semanticcategories, :semanticcategory_id
  end
end
