class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :short_description
      t.text :long_description
      t.integer :price_per_person
      t.integer :nb_max_of_persons
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
