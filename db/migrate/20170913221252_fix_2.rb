class Fix2 < ActiveRecord::Migration[5.1]
  def change
    add_column :devis, :deadline, :datetime
    remove_column :devis, :description
  end
end
