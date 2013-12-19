class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :members_limit
      t.string :venue
      t.string :venue_url
      t.string :venue_address
      t.boolean :done
      t.dateitme :start_time
      t.datetime :end_time
      t.references :community, index: true

      t.timestamps
    end
  end
end
