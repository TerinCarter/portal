class CreateProgramsTypeOfSoftwaresJoinTable < ActiveRecord::Migration
  def change
    create_table :programs_typeofsoftwares, id:false do |t|
      t.integer :program_id
      t.integer :typeofsoftware_id
    end

  add_index :programs_typeofsoftwares, :program_id
  add_index :programs_typeofsoftwares, :typeofsoftware_id
  end
end
