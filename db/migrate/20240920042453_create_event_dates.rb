class CreateEventDates < ActiveRecord::Migration[7.0]
  def change
    create_table :event_dates do |t|
      t.integer :event_id
      t.datetime :date

      t.timestamps
    end
    add_foreign_key :event_dates, :events, column: :event_id
  end
end
