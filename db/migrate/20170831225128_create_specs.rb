class CreateSpecs < ActiveRecord::Migration[5.1]
  def change
    create_table :specs do |t|
      t.string :genre
      t.integer :minutes
      t.integer :secondes
      t.text :description
      t.boolean :image
      t.string :devi_id

      t.timestamps
    end
  end
end
