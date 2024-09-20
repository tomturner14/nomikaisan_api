class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.integer :event_id
      t.string :name
      t.integer :status

      t.timestamps
    end
    add_foreign_key :participants, :events, column: :event_id
  end
end
