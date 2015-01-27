class CreateHumResAssistances < ActiveRecord::Migration
  def change
    create_table :hum_res_assistances do |t|
      t.string :name
      t.integer :qty
      t.float :price
      t.datetime :time
      t.float :subtotal
      t.references :adverse_event, index: true
      t.references :service, index: true

      t.timestamps null: false
    end
    add_foreign_key :hum_res_assistances, :adverse_events
    add_foreign_key :hum_res_assistances, :services
  end
end
