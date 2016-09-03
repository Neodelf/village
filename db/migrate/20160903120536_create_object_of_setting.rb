class CreateObjectOfSetting < ActiveRecord::Migration
  def change
    Setting.create(default_cost_square_meter: 450)
  end
end
