class AddOnlineStatustoExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :is_online, :boolean
  end
end
