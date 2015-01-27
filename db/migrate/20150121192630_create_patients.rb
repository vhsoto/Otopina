class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :document_type
      t.string :document_number
      t.string :name
      t.string :lastname
      t.integer :age
      t.string :gender

      t.timestamps null: false
    end
  end
end
