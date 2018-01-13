class CreateDevis < ActiveRecord::Migration[5.1]
  def change
    create_table :devis do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :status
      t.boolean :email_sent
      t.datetime :deadline
      t.string :price
      t.string :currency
      t.string :session_id

      t.timestamps
    end
  end
end
