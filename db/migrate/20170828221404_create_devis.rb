class CreateDevis < ActiveRecord::Migration[5.1]
  def change
    create_table :devis do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :status
      t.datetime :deadline
      t.decimal :price, :decimal, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
