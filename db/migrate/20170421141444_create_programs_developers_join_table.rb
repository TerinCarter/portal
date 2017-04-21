class CreateProgramsDevelopersJoinTable < ActiveRecord::Migration
    def change
    create_table :programs_developers, id:false do |t|
      t.integer :program_id
      t.integer :developer_id
    end

  add_index :programs_developers, :program_id
  add_index :programs_developers, :developer_id
  end
end
