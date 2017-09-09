class CreateDevisConfigurations < ActiveRecord::Migration[5.1]
  def change
    create_table :devis_configurations do |t|
      t.decimal :ratio_facturation
      t.decimal :tva
      t.decimal :taux_image
      t.decimal :deadline
      t.decimal :per_new_music

      t.timestamps
    end
  end
end
