class CreateSteadsTable < ActiveRecord::Migration
  def change
    create_table :steads_tables do |t|
      t.integer :cost_square_meter
      t.integer :serial_number
      t.integer :total_area
      t.string :description
    end
  end
end
