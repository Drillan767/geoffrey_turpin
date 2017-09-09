class Correctif1 < ActiveRecord::Migration[5.1]
  def change
    remove_column :specs, :deadline
    add_column :devis, :deadline, :datetime
    add_column :devis_configurations, :deadline, :decimal
    add_column :devis_configurations, :per_new_music, :decimal
  end
end
