class CreateProgramsOperatingSystemsJoinTable < ActiveRecord::Migration
   def change
    create_table :programs_operatingsystems, id:false do |t|
      t.integer :program_id
      t.integer :operatingsystem_id
   end

  add_index :programs_operatingsystems, :program_id
  add_index :programs_operatingsystems, :operatingsystem_id
  end
end
