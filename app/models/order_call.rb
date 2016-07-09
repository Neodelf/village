class OrderCall < ActiveRecord::Base
  validates :name, :comment, presence: true
  validates :phone_number, phone_number: true, presence: true
end
