class Renamecolumn < ActiveRecord::Migration
  def change
  	rename_column :materials, :type, :category
  end
end
