class AddCategoryToExperience < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :category, :string
  end
end
