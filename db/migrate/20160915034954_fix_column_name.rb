class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :articles, :string, :slug
  end
end
