class Addindex < ActiveRecord::Migration
  def up
    add_index :eventattendances, [:event_id, :user_id], unique: true
  end
end
