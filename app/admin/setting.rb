ActiveAdmin.register Setting do
  permit_params :default_cost_square_meter
  actions :index, :show, :edit, :update
end
