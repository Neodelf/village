class Image < ActiveRecord::Base
  KIND = %w(photo plan)
  validates :file_data, presence: true
  mount_uploader :file_data, ImageUploader
  belongs_to :building
end
