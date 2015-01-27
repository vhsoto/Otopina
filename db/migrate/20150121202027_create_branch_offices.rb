class CreateBranchOffices < ActiveRecord::Migration
  def change
    create_table :branch_offices do |t|
      t.string :name
      t.string :city

      t.timestamps null: false
    end
  end
end
