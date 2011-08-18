class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :event_name
      t.string :pInCharge
      t.string :date
      t.string :location
      t.string :time
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
