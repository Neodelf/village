class Image < ActiveRecord::Base
  validates :file_data, presence: true
  mount_uploader :file_data, ImageUploader
  belongs_to :building
end
