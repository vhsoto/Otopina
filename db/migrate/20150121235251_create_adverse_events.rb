class CreateAdverseEvents < ActiveRecord::Migration
  def change
    create_table :adverse_events do |t|
      t.datetime :time
      t.string :reason_admission
      t.string :description
      t.boolean :pregnant
      t.references :event, index: true
      t.references :patient, index: true
      t.references :branch_office, index: true

      t.timestamps null: false
    end
    add_foreign_key :adverse_events, :events
    add_foreign_key :adverse_events, :patients
    add_foreign_key :adverse_events, :branch_offices
  end
end
