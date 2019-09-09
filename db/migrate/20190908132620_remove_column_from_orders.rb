class RemoveColumnFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :postal_code, :string
    remove_column :orders, :prefecture, :string
    remove_column :orders, :city, :string
    remove_column :orders, :building, :string
  end
end
