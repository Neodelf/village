class AddIndexes < ActiveRecord::Migration
  def change
    add_index :images, :building_id
  end
end
