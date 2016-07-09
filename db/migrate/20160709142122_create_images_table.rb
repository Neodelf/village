class CreateImagesTable < ActiveRecord::Migration
  def change
    create_table :images_tables do |t|
      t.string :name
    end
  end
end
