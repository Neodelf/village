ActiveAdmin.register Building do
  permit_params :title, :description, images_attributes: [
                          :id, :file_data, :_destroy, :title, :kind, :remote_file_data_url
                      ]

  form do |f|
    f.inputs I18n.t('activerecord.models.building') do
      f.semantic_errors *f.object.errors.keys
      f.input :title
      f.input :description
      f.has_many :images do |image|
        image.input :file_data, as: :file, hint: image.template.image_tag(image.object.file_data.url(:admin))
        image.input :remote_file_data_url
        image.input :title
        image.input :kind, as: :select, collection: Image::KIND.map { |kind| [I18n.t("activerecord.attributes.image.#{kind}", kind)] }
        image.input :_destroy, as: :boolean, required: false
      end
      f.actions
    end
  end

  show do |building|
    attributes_table do
      row :title
      row :description
      row :images do
        ol do
          building.images.each do |image|
            li do
              ul do
                li do
                  "#{I18n.t('activerecord.attributes.image.title')}: #{image.title}"
                end
                li do
                  image_tag(image.file_data.url(:admin))
                end
              end
            end
          end
        end
      end
    end
    active_admin_comments
  end
end
