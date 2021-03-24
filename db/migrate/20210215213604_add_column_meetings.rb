class AddColumnMeetings < ActiveRecord::Migration[5.2]
  def change
    change_table :meetings do |t|
      t.references :members
    end
  end
end
