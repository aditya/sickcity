class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.column 'name', :string
      t.column 'latitude', :string
      t.column 'longitude', :string
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
