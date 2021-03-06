class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :titre
      t.string :slug, :unique => true
      t.text :contenu
      t.string :image

      t.timestamps null: false
    end
  end
end
