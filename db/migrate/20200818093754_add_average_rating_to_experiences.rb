class AddAverageRatingToExperiences < ActiveRecord::Migration[6.0]
  def change
     add_column :experiences, :average_rating, :integer
  end
end
