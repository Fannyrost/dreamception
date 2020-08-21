class ChangeStatutOnlineExp < ActiveRecord::Migration[6.0]
  def change
    change_table :experiences do |t|
      t.change :is_online, :boolean, default: true
    end
  end
end
