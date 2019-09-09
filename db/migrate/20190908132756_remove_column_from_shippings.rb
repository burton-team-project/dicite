class RemoveColumnFromShippings < ActiveRecord::Migration[5.2]
  def change
    remove_column :shippings, :postal_code, :string
    remove_column :shippings, :prefecture, :string
    remove_column :shippings, :city, :string
    remove_column :shippings, :building, :string
  end
end
