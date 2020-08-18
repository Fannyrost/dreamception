class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :date
      t.integer :total_price
      t.integer :nb_of_persons
      t.references :user, null: false, foreign_key: true
      t.references :experience

      t.timestamps
    end
  end
end
