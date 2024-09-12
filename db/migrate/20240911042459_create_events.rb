class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name, :null => false
      t.string :memo
      t.text :url_id, unique: true

      t.timestamps
    end
  end
end
