ActiveAdmin.register Stead do
  permit_params :cost_square_meter, :serial_number, :total_area, :description, :status
  actions :edit, :update, :index, :show
  config.per_page = 20
  config.sort_order = 'serial_number'

  index do
    column :serial_number
    column :total_area
    column :cost_square_meter
    column :description
    column :status do |stead|
      status_tag I18n.t(".active_admin.steads.status.#{stead.status}"), (stead.free? ? :warning : :ok)
    end
    actions
  end

  show do
    attributes_table do
      row :serial_number
      row :total_area
      row :cost_square_meter
      row :description
      row :status do |stead|
        status_tag I18n.t(".active_admin.steads.status.#{stead.status}"), (stead.free? ? :warning : :ok)
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs I18n.t('activerecord.models.stead') do
      f.semantic_errors *f.object.errors.keys
      f.input :serial_number
      f.input :total_area
      f.input :cost_square_meter
      f.input :description
      f.input :status, as: :select, collection: Stead::KIND.map { |kind| [I18n.t("active_admin.steads.status.#{kind}"), kind] }
      f.actions
    end
  end
end
