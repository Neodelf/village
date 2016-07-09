class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :default_cost_square_meter
    end
  end
end
