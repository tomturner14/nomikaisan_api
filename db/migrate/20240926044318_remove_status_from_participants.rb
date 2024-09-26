class RemoveStatusFromParticipants < ActiveRecord::Migration[7.0]
  def change
    remove_column :participants, :status, :integer
  end
end
