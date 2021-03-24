class RenameMeetingsMemberId < ActiveRecord::Migration[5.2]
  def change
    change_table :meetings do |t|
      t.rename :members_id, :member1_id
    end
  end
end
