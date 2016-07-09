class CreateOrderCalls < ActiveRecord::Migration
  def change
    create_table :order_calls do |t|
      t.string :name
      t.string :phone_number
      t.text :comment
    end
  end
end
