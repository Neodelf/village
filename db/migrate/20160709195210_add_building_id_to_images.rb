class AddBuildingIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :building_id, :integer
  end
end
