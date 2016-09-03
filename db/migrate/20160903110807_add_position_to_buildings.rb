class AddPositionToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :position, :integer
  end
end
