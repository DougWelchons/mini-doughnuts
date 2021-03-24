class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.references :attendee1, null: false
      t.references :attendee2, null: false
    end

    add_foreign_key :meetings, :members, column: :attendee1_id
    add_foreign_key :meetings, :members, column: :attendee2_id
  end
end
