class CreateHospitalizationDays < ActiveRecord::Migration
  def change
    create_table :hospitalization_days do |t|
      t.integer :qty
      t.float :price
      t.float :subtotal
      t.date :date
      t.references :adverse_event, index: true
      t.references :service, index: true

      t.timestamps null: false
    end
    add_foreign_key :hospitalization_days, :adverse_events
    add_foreign_key :hospitalization_days, :services
  end
end
