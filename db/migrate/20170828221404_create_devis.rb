class CreateDevis < ActiveRecord::Migration[5.1]
  def change
    create_table :devis do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :status
<<<<<<< HEAD
=======
      t.boolean :email_sent
>>>>>>> af150ea9eb2ffb2b6ede9bc5353d54cb73ea2e5a
      t.datetime :deadline
      t.decimal :price, :precision => 8, :scale => 2
      t.string :currency
      t.string :session_id

      t.timestamps
    end
  end
end
