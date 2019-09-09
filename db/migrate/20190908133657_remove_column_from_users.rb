class RemoveColumnFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :postal_code, :string
    remove_column :users, :prefecture, :string
    remove_column :users, :city, :string
    remove_column :users, :building, :string
  end
end
