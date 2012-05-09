class AddPermalinkToRestaurants < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :permalink, :string
    add_index :restaurants, :permalink
  end
  def self.down
    remove_column :restaurants, :permalink
  end
end