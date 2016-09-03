ActiveAdmin.register Setting do
  permit_params :default_cost_square_meter
  actions :index, :edit, :update

  index do
    column :default_cost_square_meter
    actions
  end

  controller do
    def update
      new_cost = params[:setting][:default_cost_square_meter]
      super
      unless Setting.first.default_cost_square_meter == new_cost
        Stead.all.each { |stead| stead.update_attribute(:cost_square_meter, new_cost) }
      end
    end
  end

end
