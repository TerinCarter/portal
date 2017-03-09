class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :version
      t.integer :test
      t.string :dowloadLinkOne
      t.string :dowloadLinkTwo
      t.string :screenshotsLinks
      t.integer :rating
      t.string :status

      t.timestamps null: false
    end
  end
end
