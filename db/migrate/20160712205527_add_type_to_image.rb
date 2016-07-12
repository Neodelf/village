class AddTypeToImage < ActiveRecord::Migration
  def change
    add_column :images, :kind, :string
  end
end
