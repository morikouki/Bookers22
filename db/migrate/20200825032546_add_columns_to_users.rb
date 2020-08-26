class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :postcode, :integer
    add_column :users, :prefecture_code, :string
    add_column :users, :cith, :string
    add_column :users, :street, :string
  end
end
