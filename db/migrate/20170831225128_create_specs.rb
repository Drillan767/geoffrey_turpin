class CreateSpecs < ActiveRecord::Migration[5.1]
  def change
    create_table :specs do |t|
      t.string :genre
      t.integer :duree
      t.text :description
      t.boolean :image
      t.integer :devi_id

      t.timestamps
    end
  end
end
