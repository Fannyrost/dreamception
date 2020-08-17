class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :description
      t.integer :price_per_person
      t.integer :nb_max_of_person
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
