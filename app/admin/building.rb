ActiveAdmin.register Building do
  permit_params :title, :description, images_attributes: [ :id, :file_data, :_destroy ]

  form do |f|
    f.inputs I18n.t('activerecord.models.building') do
      f.semantic_errors *f.object.errors.keys
      f.input :title
      f.input :description
      f.has_many :images do |image|
        image.input :file_data, as: :file, hint: image.template.image_tag(image.object.file_data.url(:admin))
        image.input :title
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
        ul do
          building.images.each do |image|
            li do
              image.title
              image_tag(image.file_data.url(:admin))
            end
          end
        end
      end
    end
    active_admin_comments
  end
end
