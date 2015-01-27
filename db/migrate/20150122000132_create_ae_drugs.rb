class CreateAeDrugs < ActiveRecord::Migration
  def change
    create_table :ae_drugs do |t|
      t.float :drug_price
      t.float :drug_subtotal
      t.datetime :drug_time
      t.integer :qty
      t.references :adverse_event, index: true
      t.references :drug, index: true
      t.references :service, index: true
      t.references :charge, index: true

      t.timestamps null: false
    end
    add_foreign_key :ae_drugs, :adverse_events
    add_foreign_key :ae_drugs, :drugs
    add_foreign_key :ae_drugs, :services
    add_foreign_key :ae_drugs, :charges
  end
end
