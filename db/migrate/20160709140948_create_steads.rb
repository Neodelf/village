class CreateSteads < ActiveRecord::Migration
  def change
    create_table :steads do |t|
      t.integer :cost_square_meter, default: 450
      t.integer :serial_number
      t.integer :total_area
      t.string :description
    end
  end
end
