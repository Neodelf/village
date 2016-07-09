class Stead < ActiveRecord::Base
  validates :cost_square_meter, :serial_number, :total_area, presence: true
end
