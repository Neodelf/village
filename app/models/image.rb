class Image < ActiveRecord::Base
  KIND = %w(photo plan)
  #validate :upload_or_remote_url
  mount_uploader :file_data, ImageUploader
  belongs_to :building

  private

  def upload_or_remote_url
    if file_data.blank? && remote_file_data_url.blank?
      errors.add(I18n.t('.specify_image'))
    end
  end
end
