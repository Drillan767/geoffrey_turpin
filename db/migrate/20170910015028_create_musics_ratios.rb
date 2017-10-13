class CreateMusicsRatios < ActiveRecord::Migration[5.1]
  def change
    create_table :musics_ratios do |t|
      t.string :music_genre
      t.decimal :ratio, :precision => 8, :scale => 2
      t.integer :devis_configuration_id

      t.timestamps
    end
  end
end
