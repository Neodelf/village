ActiveAdmin.register OrderCall do
  permit_params :name, :phone_number, :comment
  actions :index, :show
end
