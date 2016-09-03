class ChangeTypeOfKindInImages < ActiveRecord::Migration
  def change
    remove_column :images, :kind
    add_column :images, :kind, :integer, default: 0
  end
end
