class CreateDevis < ActiveRecord::Migration[5.1]
  def change
    create_table :devis do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :status
      t.datetime :deadline
      t.decimal :price, :precision => 8, :scale => 2
      t.string :currency
      t.string :session_id

      t.timestamps
    end
  end
end
