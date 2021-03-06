class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_kana_name, :string
    add_column :users, :first_kana_name, :string
    add_column :users, :phone, :string
    add_column :users, :postalcode, :string
    add_column :users, :prefecture, :string
    add_column :users, :city, :string
    add_column :users, :building, :string
  end
end
