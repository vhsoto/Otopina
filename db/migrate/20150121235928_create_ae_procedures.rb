class CreateAeProcedures < ActiveRecord::Migration
  def change
    create_table :ae_procedures do |t|
      t.float :procedure_price
      t.float :procedure_subtotal
      t.datetime :procedure_time
      t.references :procedure, index: true
      t.references :service, index: true
      t.references :adverse_event, index: true
      t.references :charge, index: true

      t.timestamps null: false
    end
    add_foreign_key :ae_procedures, :procedures
    add_foreign_key :ae_procedures, :services
    add_foreign_key :ae_procedures, :adverse_events
    add_foreign_key :ae_procedures, :charges
  end
end
