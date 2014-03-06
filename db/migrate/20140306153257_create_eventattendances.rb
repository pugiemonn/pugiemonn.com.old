class CreateEventattendances < ActiveRecord::Migration
  def change
    create_table :eventattendances do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :status

      t.timestamps
    end
  end
end
