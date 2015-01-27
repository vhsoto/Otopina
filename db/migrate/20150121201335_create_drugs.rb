class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :code
      t.string :name
      t.float :price

      t.timestamps null: false
    end
  end
end
