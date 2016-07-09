class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :default_cost_square_meter
    end
    Setting.create!(default_cost_square_meter: 450)
  end
end
