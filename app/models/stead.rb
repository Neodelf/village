class Stead < ActiveRecord::Base
  enum status: [:free, :sales]
  validates :cost_square_meter, :serial_number, :total_area, presence: true
end
