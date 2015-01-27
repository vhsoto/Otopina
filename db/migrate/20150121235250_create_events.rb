class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :Detail
      t.references :event_category, index: true

      t.timestamps null: false
    end
    add_foreign_key :events, :event_categories
  end
end
