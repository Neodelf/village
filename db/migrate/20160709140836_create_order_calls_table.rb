class CreateOrderCallsTable < ActiveRecord::Migration
  def change
    create_table :order_calls_tables do |t|
      t.string :name
      t.string :phone_number
      t.text :comment
    end
  end
end
