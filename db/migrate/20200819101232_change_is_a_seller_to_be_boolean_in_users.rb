class ChangeIsASellerToBeBooleanInUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :is_a_seller
    add_column :users, :is_a_seller, :boolean, default: false
  end
end
