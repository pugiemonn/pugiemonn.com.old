class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :service, :string
    add_column :events, :event_url, :string
    add_column :events, :catch, :text
    add_column :events, :address, :string
    add_column :events, :started_at, :datetime
    add_column :events, :ended_at, :datetime
    add_column :events, :place, :string
    add_column :events, :lon, :decimal
    add_column :events, :lat, :decimal
    add_column :events, :limit, :integer, default: 0
    add_column :events, :accepted, :integer, default: 0
    add_column :events, :waiting, :integer, default: 0
  end
end
