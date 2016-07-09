class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :title
      t.string :description
    end
  end
end
