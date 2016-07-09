ActiveAdmin.register Stead do
  permit_params :cost_square_meter, :serial_number, :total_area, :description
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
end
