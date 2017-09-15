class CreateDevisConfigurations < ActiveRecord::Migration[5.1]
  def change
    create_table :devis_configurations do |t|
      t.decimal :ratio_facturation, :precision => 8, :scale => 2
      t.decimal :tva, :precision => 8, :scale => 2
      t.decimal :taux_image, :precision => 8, :scale => 2
      t.decimal :deadline, :precision => 8, :scale => 2
      t.decimal :per_new_music, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end