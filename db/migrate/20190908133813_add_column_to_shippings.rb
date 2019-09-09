class AddColumnToShippings < ActiveRecord::Migration[5.2]
  def change
    add_column :shippings, :postcode, :integer
    add_column :shippings, :prefecture_code, :integer
    add_column :shippings, :address_city, :string
    add_column :shippings, :address_street, :string
    add_column :shippings, :address_building, :string
  end
end
