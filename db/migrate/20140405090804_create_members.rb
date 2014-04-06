class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :status

      t.timestamps
    end
    add_index :members, [:event_id, :user_id], unique: true
  end
end
