class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.integer :event_date_id, null: false, index: true
      t.integer :participant_id, null: false, index: true
      t.integer :status, null: false
      t.text :comment
      t.timestamps

      # 外部キー制約を追加
      t.foreign_key :event_dates, column: :event_date_id
      t.foreign_key :participants, column: :participant_id
    end
  end
end
