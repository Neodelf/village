class CreateSettingsTable < ActiveRecord::Migration
  def change
    create_table :settings_tables do |t|
      t.integer :default_cost_square_meter
    end
  end
end
