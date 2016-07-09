class RenameNameToFileDataInImages < ActiveRecord::Migration
  def change
    rename_column :images, :name, :file_data
  end
end
