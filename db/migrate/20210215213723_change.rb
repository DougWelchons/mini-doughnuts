class Change < ActiveRecord::Migration[5.2]
  def change
    change_table :meetings do |t|
      t.rename :members_id, :member2_id
    end

    add_foreign_key :meetings, :members, column: :member1_id
    add_foreign_key :meetings, :members, column: :member2_id
  end
end
