class CreateCounts < ActiveRecord::Migration
  def self.up
    create_table :counts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :counts
  end
end
