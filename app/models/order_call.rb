class OrderCall < ActiveRecord::Base
  validates :phone_number, :name, :comment, presence: true
end
