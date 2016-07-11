class Building < ActiveRecord::Base
  validates :title, presence: true
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
end