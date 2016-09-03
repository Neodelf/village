class Stead < ActiveRecord::Base
  KIND = [:free, :sales]
  enum status: KIND
  validates :cost_square_meter, :serial_number, :total_area, presence: true
end
